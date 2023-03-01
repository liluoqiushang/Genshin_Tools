@Entry
@Preview
@Component
export struct ToolsPage {
  build() {
    Column() {
      List() {
        ListItem() {
          Row() {
            Text('自动签到')
              .fontSize(16)
            Blank()
            Toggle({
              type:ToggleType.Switch
            })
            //.padding(20)
          }
          .padding(20)
          .backgroundColor('#fff')
          .borderRadius(20)
          .width('100%')
        }
      }
    }
    .padding(20)
    .height('100%')
    .width('100%')
    .backgroundColor('#fff3f3f6')
  }
}