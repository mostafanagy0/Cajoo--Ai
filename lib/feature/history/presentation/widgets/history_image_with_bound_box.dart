import 'package:cajoo/feature/history/data/models/history_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HistoryImageWithBoundingBox extends StatelessWidget {
  final HistoryItem historyItem;

  const HistoryImageWithBoundingBox({
    super.key,
    required this.historyItem,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = historyItem.imageUrl;
    final detections = historyItem.detections;

    // Widget dimensions
    const double widgetWidth = 345;
    const double widgetHeight = 215;

    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: widgetWidth,
        maxHeight: widgetHeight,
      ),
      child: ClipRect(
        child: Stack(
          clipBehavior: Clip.hardEdge, // Prevent overflow outside the widget
          children: [
            Image.network(
              imageUrl,
              fit: BoxFit.cover,
              width: widgetWidth,
              height: widgetHeight,
              errorBuilder: (context, error, stackTrace) {
                if (kDebugMode) {
                  print('Failed to load image: $imageUrl, error: $error');
                }
                return const Center(
                  child: Text('no image'),
                );
              },
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const Center(child: CircularProgressIndicator());
              },
            ),
            if (detections.isNotEmpty)
              ...detections.asMap().entries.map((entry) {
                final index = entry.key;
                final detection = entry.value;
                final bbox = detection.bbox;

                // Original bbox coordinates
                double xmin = bbox.xmin;
                double ymin = bbox.ymin;
                double xmax = bbox.xmax;
                double ymax = bbox.ymax;

                // Log original coordinates
                if (kDebugMode) {
                  print(
                    'Detection $index: xmin=$xmin, ymin=$ymin, xmax=$xmax, ymax=$ymax',
                  );
                }

                // Original image dimensions (based on JSON ymax values)
                // Using max values from JSON to estimate dimensions
                const double originalImageWidth = 1280; // Approximate value
                const double originalImageHeight = 960; // Approximate value

                // Scale coordinates to match widget dimensions
                double scaleX = widgetWidth / originalImageWidth;
                double scaleY = widgetHeight / originalImageHeight;

                double scaledXmin = xmin * scaleX;
                double scaledYmin = ymin * scaleY;
                double scaledWidth = (xmax - xmin) * scaleX;
                double scaledHeight = (ymax - ymin) * scaleY;

                // Log scaled coordinates
                if (kDebugMode) {
                  print(
                    'Scaled Detection $index: xmin=$scaledXmin, ymin=$scaledYmin, width=$scaledWidth, height=$scaledHeight',
                  );
                }

                // Ensure dimensions are not negative or zero
                if (scaledWidth <= 0 || scaledHeight <= 0) {
                  if (kDebugMode) {
                    print(
                        'Invalid dimensions for detection $index: width=$scaledWidth, height=$scaledHeight');
                  }
                  return const SizedBox.shrink();
                }

                // Ensure coordinates are within widget bounds
                if (scaledXmin < 0) scaledXmin = 0;
                if (scaledYmin < 0) scaledYmin = 0;
                if (scaledXmin + scaledWidth > widgetWidth) {
                  scaledWidth = widgetWidth - scaledXmin;
                }
                if (scaledYmin + scaledHeight > widgetHeight) {
                  scaledHeight = widgetHeight - scaledYmin;
                }

                // Ensure width and height are still valid after clipping
                if (scaledWidth <= 0 || scaledHeight <= 0) {
                  if (kDebugMode) {
                    print(
                        'Clipped dimensions invalid for detection $index: width=$scaledWidth, height=$scaledHeight');
                  }
                  return const SizedBox.shrink();
                }

                return Positioned(
                  left: scaledXmin,
                  top: scaledYmin,
                  child: Container(
                    width: scaledWidth,
                    height: scaledHeight,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.red, width: 2),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '${detection.className} (${(detection.confidence * 100).toStringAsFixed(2)}%)',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 10,
                          backgroundColor: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                );
              }),
          ],
        ),
      ),
    );
  }
}
