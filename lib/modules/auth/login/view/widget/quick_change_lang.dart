// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import '../../../../../core/theme/colors/colors_manager.dart';

// class QuickChangeLang extends StatelessWidget {
//   const QuickChangeLang({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         width: 75.w,
//         child: Row(
//           children: [
//             GestureDetector(
//               onTap: () {},
//               child: Text(
//                 'Ar',
//                 style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                     color: ColorsManager().colorScheme.primary,
//                     fontWeight: FontWeight.w700),
//               ),
//             ),
//             Text(
//               ' | ',
//               style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                   color: ColorsManager().colorScheme.grey50,
//                   fontWeight: FontWeight.w700),
//             ),
//             GestureDetector(
//               onTap: () {},
//               child: Text(
//                 'En',
//                 style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                     color: ColorsManager().colorScheme.primary,
//                     fontWeight: FontWeight.w700),
//               ),
//             ),
//             Icon(Icons.language, color: ColorsManager().colorScheme.primary),
//           ],
//         ),
//       ),
//     );
//   }
// }
