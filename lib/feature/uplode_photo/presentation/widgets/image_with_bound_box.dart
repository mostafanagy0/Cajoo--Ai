import 'package:cajoo/feature/uplode_photo/data/models/image_detection_response_model.dart';
import 'package:flutter/material.dart';

class ImageWithBoundingBox extends StatelessWidget {
  final ImageDetectionResponseModel response;

  const ImageWithBoundingBox({
    super.key,
    required this.response,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = response.data.imageUrl;
    final detections = response.data.detection.detections;

    // Widget dimensions
    const double widgetWidth = 345;
    const double widgetHeight = 215;

    // detections.asMap().forEach((index, detection) {
    //   print("Detection $index: ${detection.toJson()}");
    // });

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
                return const Center(
                  child: Text('Failed to load image'),
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
                double xmin = bbox.xmin.toDouble();
                double ymin = bbox.ymin.toDouble();
                double xmax = bbox.xmax.toDouble();
                double ymax = bbox.ymax.toDouble();

                // Original image dimensions (based on previous logs)
                const double originalImageWidth = 1280; // Approximate value
                const double originalImageHeight =
                    960; // Approximate value based on ymax=766

                // Scale coordinates to match widget dimensions
                double scaleX = widgetWidth / originalImageWidth;
                double scaleY = widgetHeight / originalImageHeight;

                double scaledXmin = xmin * scaleX;
                double scaledYmin = ymin * scaleY;
                double scaledWidth = (xmax - xmin) * scaleX;
                double scaledHeight = (ymax - ymin) * scaleY;

                // Ensure dimensions are not negative or zero
                if (scaledWidth <= 0 || scaledHeight <= 0) {
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
                          fontSize: 10, // Smaller font size to fit
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
