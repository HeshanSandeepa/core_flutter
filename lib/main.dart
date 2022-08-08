import 'package:flutter/material.dart';
import 'package:flutter_core/async_coding/streams.dart';
import 'package:flutter_core/state_management/inherited_widget.dart';
import 'package:flutter_core/widget_of_the_week/about_dialog.dart';
import 'package:flutter_core/widget_of_the_week/alerts.dart';
import 'package:flutter_core/widget_of_the_week/animated_container.dart';
import 'package:flutter_core/widget_of_the_week/animated_cross_fade.dart';
import 'package:flutter_core/widget_of_the_week/animated_icon.dart';
import 'package:flutter_core/widget_of_the_week/animated_list.dart';
import 'package:flutter_core/widget_of_the_week/animated_opacity.dart';
import 'package:flutter_core/widget_of_the_week/animated_padding.dart';
import 'package:flutter_core/widget_of_the_week/animated_positioned.dart';
import 'package:flutter_core/widget_of_the_week/animated_switcher.dart';
import 'package:flutter_core/widget_of_the_week/animated_widget.dart';
import 'package:flutter_core/widget_of_the_week/aspect_ratio.dart';
import 'package:flutter_core/widget_of_the_week/builder.dart';
import 'package:flutter_core/widget_of_the_week/check_box_list_tile.dart';
import 'package:flutter_core/widget_of_the_week/clip_oval.dart';
import 'package:flutter_core/widget_of_the_week/clip_path.dart';
import 'package:flutter_core/widget_of_the_week/color_filtered.dart';
import 'package:flutter_core/widget_of_the_week/constraint_box.dart';
import 'package:flutter_core/widget_of_the_week/container.dart';
import 'package:flutter_core/widget_of_the_week/cupertino_action_sheet.dart';
import 'package:flutter_core/widget_of_the_week/cupertino_activity_indicator.dart';
import 'package:flutter_core/widget_of_the_week/data_table.dart';
import 'package:flutter_core/widget_of_the_week/divider.dart';
import 'package:flutter_core/widget_of_the_week/draggable.dart';
import 'package:flutter_core/widget_of_the_week/draggable_scrollable_sheet.dart';
import 'package:flutter_core/widget_of_the_week/drawer.dart';
import 'package:flutter_core/widget_of_the_week/flexible.dart';
import 'package:flutter_core/widget_of_the_week/fractional_sized_box.dart';
import 'package:flutter_core/widget_of_the_week/grid.dart';
import 'package:flutter_core/widget_of_the_week/ignore_pointer.dart';
import 'package:flutter_core/widget_of_the_week/image.dart';
import 'package:flutter_core/widget_of_the_week/image_filtered.dart';
import 'package:flutter_core/widget_of_the_week/interactive_viewer.dart';
import 'package:flutter_core/widget_of_the_week/limited_box.dart';
import 'package:flutter_core/widget_of_the_week/list_tile.dart';
import 'package:flutter_core/widget_of_the_week/list_view.dart';
import 'package:flutter_core/widget_of_the_week/list_wheel_scroll_view.dart';
import 'package:flutter_core/widget_of_the_week/media_query.dart';
import 'package:flutter_core/widget_of_the_week/notification_listener.dart';
import 'package:flutter_core/widget_of_the_week/padding.dart';
import 'package:flutter_core/widget_of_the_week/physical_model.dart';
import 'package:flutter_core/widget_of_the_week/place_holder.dart';
import 'package:flutter_core/widget_of_the_week/progress_indicator.dart';
import 'package:flutter_core/widget_of_the_week/reorderable_list_view.dart';
import 'package:flutter_core/widget_of_the_week/rich_text.dart';
import 'package:flutter_core/widget_of_the_week/selectable_text.dart';
import 'package:flutter_core/widget_of_the_week/shader_mask.dart';
import 'package:flutter_core/widget_of_the_week/slider.dart';
import 'package:flutter_core/widget_of_the_week/sliver_app_bar.dart';
import 'package:flutter_core/widget_of_the_week/snack_bar.dart';
import 'package:flutter_core/widget_of_the_week/spacer.dart';
import 'package:flutter_core/widget_of_the_week/stack.dart';
import 'package:flutter_core/widget_of_the_week/stacked_index.dart';
import 'package:flutter_core/widget_of_the_week/switch_list_tile.dart';
import 'package:flutter_core/widget_of_the_week/tab_controller.dart';
import 'package:flutter_core/widget_of_the_week/toggle_button.dart';

import 'animations/align_transition.dart';
import 'animations/decoratedbox_transition.dart';
import 'animations/default_text_style_transition.dart';
import 'animations/fade_transition.dart';
import 'animations/positioned_transition.dart';
import 'animations/rotation_transition.dart';
import 'animations/scale_transition.dart';
import 'animations/size_transition.dart';
import 'animations/slide_transition.dart';
import 'async_coding/future_async_await.dart';
import 'async_coding/isolate.dart';
import 'flutter_in_focus/generators.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Core',
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
            height: 80,
            iconTheme:
                MaterialStateProperty.all(const IconThemeData(size: 50.0))),
        primarySwatch: Colors.blue,
      ),
      home: const PhysicalModelApp(),
    );
  }
}
