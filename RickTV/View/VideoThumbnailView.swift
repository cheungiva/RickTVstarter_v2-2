
import SwiftUI

struct VideoThumbnailView: View {
  var video: Video

  var body: some View {
    VStack(alignment: .leading, spacing: 10) {
      Image(video.thumbnailName)
        .resizable()
        .renderingMode(.original)
        .aspectRatio(contentMode: .fill)
        .frame(width: 450, height: 255)
      // 1
      .clipped()
      // 2
      .cornerRadius(10)
      // 3
      .shadow(radius: 5)
      // 1
      VStack(alignment: .leading) {
      // 2
      Text(video.title
      )
      .foregroundColor(.primary)
      .font(.headline)
      .bold()
      // 3
      Text(video.description.isEmpty ?
      "No description provided for this video." :
      video.description
      )
      .font(.subheadline
      )
      .foregroundColor(.secondary) .multilineTextAlignment(.leading) .lineLimit(2)
      .frame(height: 80)
      }
    }
  }
}

struct VideoItem_Previews: PreviewProvider {
  static var previews: some View {
    VideoThumbnailView(
      video: Video(
        title: "Introduction to ARKit",
        description: "Learn about ARKit in this amazing tutorial!",
        thumbnailName: "arkit"
      )
    )
  }
}
