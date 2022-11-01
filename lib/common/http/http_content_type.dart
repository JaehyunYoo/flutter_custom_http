// text types
enum TextType { plain, html, javascript, xml, csv }

// images types
enum ImageType { gif, png, jpeg, bmp, webp }

// audio types
enum AudioType { midi, mpeg, webm, ogg, wav }

// video types
enum VideoType { webm, ogg }

// application
enum ApplicationType { json, javascript, pdf, xml, form }

// mutipart Type
enum MultipartType { mixed, digest, alternative, related, report, signed, encrypted, formed }

class HttpContentType {
  HttpContentType._();

  static Map<String, String> audioType(AudioType type) {
    switch (type) {
      case AudioType.webm:
        return {'Content-Type': 'audio/${AudioType.webm.name}'};
      case AudioType.ogg:
        return {'Content-Type': 'audio/${AudioType.ogg.name}'};
      case AudioType.midi:
        return {'Content-Type': 'audio/${AudioType.midi.name}'};
      case AudioType.mpeg:
        return {'Content-Type': 'audio/${AudioType.mpeg.name}'};
      case AudioType.wav:
        return {'Content-Type': 'audio/${AudioType.wav.name}'};
      default:
        return {'Content-Type': 'audio/${AudioType.webm.name}'};
    }
  }

  static Map<String, String> textType(TextType type) {
    switch (type) {
      case TextType.plain:
        return {'Content-Type': 'text/${TextType.plain.name}'};
      case TextType.javascript:
        return {'Content-Type': 'text/${TextType.javascript.name}'};
      case TextType.csv:
        return {'Content-Type': 'text/${TextType.xml.name}'};
      case TextType.xml:
        return {'Content-Type': 'text/${TextType.csv.name}'};
      default:
        return {'Content-Type': 'text/${TextType.plain.name}'};
    }
  }

  static Map<String, String> videoType(VideoType type) {
    switch (type) {
      case VideoType.ogg:
        return {'Content-Type': 'video/${VideoType.ogg.name}'};
      case VideoType.webm:
        return {'Content-Type': 'video/${VideoType.webm.name}'};
      default:
        return {'Content-Type': 'text/${VideoType.webm.name}'};
    }
  }

  static Map<String, String> imageType(ImageType type) {
    switch (type) {
      case ImageType.png:
        return {'Content-Type': 'image/${ImageType.png.name}'};
      case ImageType.bmp:
        return {'Content-Type': 'image/${ImageType.bmp.name}'};
      case ImageType.gif:
        return {'Content-Type': 'image/${ImageType.gif.name}'};
      case ImageType.jpeg:
        return {'Content-Type': 'image/${ImageType.jpeg.name}'};
      case ImageType.webp:
        return {'Content-Type': 'image/${ImageType.webp.name}'};
      default:
        return {'Content-Type': 'image/${ImageType.jpeg.name}'};
    }
  }

  static Map<String, String> applicationType(ApplicationType type) {
    switch (type) {
      case ApplicationType.json:
        return {'Content-Type': 'application/${ApplicationType.json.name}'};
      case ApplicationType.javascript:
        return {'Content-Type': 'application/${ApplicationType.javascript.name}'};
      case ApplicationType.pdf:
        return {'Content-Type': 'application/${ApplicationType.pdf.name}'};
      case ApplicationType.xml:
        return {'Content-Type': 'application/${ApplicationType.xml.name}'};
      case ApplicationType.form:
        return {'Content-Type': 'application/x-www-form-urlencode'};
      default:
        return {'Content-Type': 'application/${ApplicationType.json.name}'};
    }
  }

  static Map<String, String> mutipartType(MultipartType type) {
    switch (type) {
      case MultipartType.mixed:
        return {'Content-Type': 'multipart/${MultipartType.mixed.name}'};
      case MultipartType.alternative:
        return {'Content-Type': 'multipart/${MultipartType.alternative.name}'};
      case MultipartType.digest:
        return {'Content-Type': 'multipart/${MultipartType.digest.name}'};
      case MultipartType.encrypted:
        return {'Content-Type': 'multipart/${MultipartType.encrypted.name}'};
      case MultipartType.related:
        return {'Content-Type': 'multipart/${MultipartType.related.name}'};
      case MultipartType.formed:
        return {'Content-Type': 'multipart/${MultipartType.related.name}-data'};
      default:
        return {'Content-Type': 'multipart/${MultipartType.related.name}-data'};
    }
  }
}
