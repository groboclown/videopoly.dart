// Use of this source code is governed by the Creative Commons-0 license that
// can be found in the LICENSE file.

library videopoly.video_player;

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:videoplay/depot.dart';


@CustomTag('video-player')
class VideoPlayerElement extends PolymerElement {
    @published
    String provider;

    @published
    String video;

    @published
    int width = 0;

    @published
    int height = 0;

    VideoPlayer _player;

    VideoPlayerElement.created() : super.created();


    @override
    void attached() {
        _destroy();

        var container = $['video-container'];

        if (provider != null && video != null) {
            VideoPlayerProvider vpp = getVideoProviderByName(provider);
            if (vpp == null) {
                print("ERROR video-player: unknown provider [${provider}]");
            } else {
                VideoPlayerAttributes vpa = vpp.createAttributes();
                if (width != null && width > 0) {
                    vpa.width = width;
                }
                if (height != null && height > 0) {
                    vpa.height = height;
                }
                embedVideo(vpp, container, video, vpa).then((VideoPlayer p) {
                    _player = p;
                });
            }
        } else {
            print("ERROR video-player: must supply both 'provider' and 'video' attributes");
        }
    }


    @override
    void detached() {
        _destroy();
    }


    void _destroy() {
        if (_player != null) {
            _player.destroy();
            _player = null;
        }
    }
}
