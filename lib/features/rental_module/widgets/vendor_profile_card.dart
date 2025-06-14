import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../util/images.dart';
import '../../../util/styles.dart';

class VendorProfileCard extends StatelessWidget {
  final bool isOrderScreen;
  const VendorProfileCard({super.key, required this.isOrderScreen});

  @override
  Widget build(BuildContext context) {
    return Container(height: 95, padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [

        Expanded(flex: 8,
          child: InkWell(
            onTap: (){Get.toNamed('/vehicle-provider-details');},
            child: Container(height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: Theme.of(context).cardColor, width: 2),
                boxShadow: [BoxShadow(color: Colors.grey.shade50.withValues(alpha: 1), blurRadius: 1, offset: const Offset(0.005, 0.005))],
              ),
              child: ClipRRect(borderRadius: BorderRadius.circular(50), child: Image.asset(Images.carToyota, fit: BoxFit.cover),),
            ),
          ),
        ),
        const SizedBox(width: 10),

        Expanded(flex: 25,
            child: InkWell(
              onTap: (){Get.toNamed('/vehicle-provider-details');},
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Padding(padding: const EdgeInsets.only(top:10),
                  child: Text('ABC rent a car', style: robotoBold.copyWith(fontSize: 13), maxLines: 1, overflow: TextOverflow.ellipsis,),
                ),

                Padding(padding: const EdgeInsets.symmetric(vertical: 7),
                  child: RichText(text: TextSpan(children: <InlineSpan>[

                    const WidgetSpan(child: Icon(Icons.star, color: Colors.amber, size: 12)),
                    TextSpan(text: ' 4.5 ', style: robotoRegular.copyWith(fontSize: 12, color: Colors.black)),
                    TextSpan(text: '(25+)', style: robotoRegular.copyWith(fontSize: 12, color: Colors.grey)),

                  ])),
                ),

                isOrderScreen ? Text('10 Vehicles', style: robotoRegular.copyWith(fontSize: 12, color: Colors.grey.shade700)) : const SizedBox(),

              ]),
            )
        ),

        isOrderScreen ? Image.asset(Images.message, height: 22, width: 22) : const SizedBox(),
        const SizedBox(width: 20),

        isOrderScreen ? Image.asset(Images.whatsappIcon, height: 22, width: 22) : const SizedBox(),
      ]),
    );
  }
}
