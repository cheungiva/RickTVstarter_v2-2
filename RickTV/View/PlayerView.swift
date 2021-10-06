
import SwiftUI
import AVKit

struct PlayerView: View {
  @State private var player: AVQueuePlayer?
  @State private var videoLooper: AVPlayerLooper?
  var body: some View {
    VideoPlayer(player: player)
      .onAppear(perform: {
        // 1
        if player == nil {
        // 2
        let templateItem = AVPlayerItem(
        url: Bundle.main.url(forResource: "rick", withExtension: "mp4")!)
        // 3
        player = AVQueuePlayer(playerItem: templateItem)
        // 4
        videoLooper = AVPlayerLooper(player: player!, templateItem:
        templateItem)
        }
        if player?.isPlaying == false { player?.play() }
      })
      .edgesIgnoringSafeArea(.all)
  }
  
}

struct PlayerView_Previews: PreviewProvider {
  static var previews: some View {
    PlayerView()
  }
}
