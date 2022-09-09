import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
import 'package:flutter_core/widget_of_the_week/auto_complete.dart';
import 'package:flutter_core/widget_of_the_week/base_line.dart';
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
import 'package:flutter_core/widget_of_the_week/drop_down_button.dart';
import 'package:flutter_core/widget_of_the_week/expansion_panel_list.dart';
import 'package:flutter_core/widget_of_the_week/flexible.dart';
import 'package:flutter_core/widget_of_the_week/flow.dart';
import 'package:flutter_core/widget_of_the_week/flutter_slidable.dart';
import 'package:flutter_core/widget_of_the_week/focusable_action_detector.dart';
import 'package:flutter_core/widget_of_the_week/fractional_sized_box.dart';
import 'package:flutter_core/widget_of_the_week/gesture_detector.dart';
import 'package:flutter_core/widget_of_the_week/grid.dart';
import 'package:flutter_core/widget_of_the_week/hero_animation.dart';
import 'package:flutter_core/widget_of_the_week/ignore_pointer.dart';
import 'package:flutter_core/widget_of_the_week/image.dart';
import 'package:flutter_core/widget_of_the_week/image_filtered.dart';
import 'package:flutter_core/widget_of_the_week/interactive_viewer.dart';
import 'package:flutter_core/widget_of_the_week/limited_box.dart';
import 'package:flutter_core/widget_of_the_week/linear_gradient.dart';
import 'package:flutter_core/widget_of_the_week/list_tile.dart';
import 'package:flutter_core/widget_of_the_week/list_view.dart';
import 'package:flutter_core/widget_of_the_week/list_wheel_scroll_view.dart';
import 'package:flutter_core/widget_of_the_week/media_query.dart';
import 'package:flutter_core/widget_of_the_week/mouse_region.dart';
import 'package:flutter_core/widget_of_the_week/navigation_rail.dart';
import 'package:flutter_core/widget_of_the_week/notification_listener.dart';
import 'package:flutter_core/widget_of_the_week/padding.dart';
import 'package:flutter_core/widget_of_the_week/physical_model.dart';
import 'package:flutter_core/widget_of_the_week/place_holder.dart';
import 'package:flutter_core/widget_of_the_week/progress_indicator.dart';
import 'package:flutter_core/widget_of_the_week/refresh_indicator.dart';
import 'package:flutter_core/widget_of_the_week/reorderable_list_view.dart';
import 'package:flutter_core/widget_of_the_week/repaint_boundary.dart';
import 'package:flutter_core/widget_of_the_week/rich_text.dart';
import 'package:flutter_core/widget_of_the_week/rotated_box.dart';
import 'package:flutter_core/widget_of_the_week/scroll_bar.dart';
import 'package:flutter_core/widget_of_the_week/selectable_text.dart';
import 'package:flutter_core/widget_of_the_week/shader_mask.dart';
import 'package:flutter_core/widget_of_the_week/slider.dart';
import 'package:flutter_core/widget_of_the_week/sliver_app_bar.dart';
import 'package:flutter_core/widget_of_the_week/snack_bar.dart';
import 'package:flutter_core/widget_of_the_week/spacer.dart';
import 'package:flutter_core/widget_of_the_week/stack.dart';
import 'package:flutter_core/widget_of_the_week/stacked_index.dart';
import 'package:flutter_core/widget_of_the_week/stateful_builder.dart';
import 'package:flutter_core/widget_of_the_week/switch_list_tile.dart';
import 'package:flutter_core/widget_of_the_week/tab_controller.dart';
import 'package:flutter_core/widget_of_the_week/tab_page_selector.dart';
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
import 'decoding_flutter/life_of_widget.dart';
import 'flutter_in_focus/debug_properties.dart';
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
        scaffoldBackgroundColor: Colors.green.shade100,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
        navigationBarTheme: NavigationBarThemeData(
            height: 80,
            iconTheme:
                MaterialStateProperty.all(const IconThemeData(size: 50.0))),
      ),

      // darkTheme: ThemeData.dark(),
      home: DebugPropertyApp(),
    );
  }
}

class Clickable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: RichText(
          text: TextSpan(
            text: 'Joe waited for the ',
            style: DefaultTextStyle.of(context).style,
            children: <TextSpan>[
              TextSpan(
                  text: 'train',
                  style: const TextStyle(color: Colors.lightBlue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => print('click')),
            ],
          ),
        ),
      ),
    );
  }
}
