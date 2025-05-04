import 'package:cajoo/feature/history/data/models/history_model.dart';
import 'package:cajoo/feature/history/presentation/widgets/Detection_Info_Widget.dart';
import 'package:cajoo/feature/history/presentation/widgets/history_image_with_bound_box.dart';
import 'package:flutter/material.dart';

class ViewHistoryImage extends StatelessWidget {
  final HistoryItem historyItem;

  const ViewHistoryImage({super.key, required this.historyItem});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            const SizedBox(height: 16),
            Container(
              width: 345,
              height: 215,
              decoration: const BoxDecoration(
                color: Color(0xFFF4F2F7),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 4),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: historyItem.detections.isNotEmpty
                    ? HistoryImageWithBoundingBox(
                        historyItem: historyItem,
                      )
                    : Image.network(
                        historyItem.imageUrl,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: double.infinity,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text('image not found'),
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const Center(
                              child: CircularProgressIndicator());
                        },
                      ),
              ),
            ),
            Container(
              width: 345,
              height: 55,
              decoration: const BoxDecoration(
                color: Color(0xFFECEBEF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: DetectionInfoWidget(historyItem: historyItem),
            ),
          ],
        ),
      ),
    );
  }
}
