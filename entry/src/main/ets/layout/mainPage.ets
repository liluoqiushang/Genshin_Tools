@Entry
@Preview
@Component
export struct MainPage {
  build() {
    Row() {
      Text('主页')
        .fontSize(16)
      Blank()
      Text('项目地址：http://github.com/liluoqiushang/Genshin_Tools')
        .height('100%')
        .textAlign(TextAlign.End)

    }
    .width('100%')
    .height('100%')
    .alignItems(VerticalAlign.Top)
  }
}