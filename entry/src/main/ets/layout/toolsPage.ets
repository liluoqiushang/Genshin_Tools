@Entry
@Preview
@Component
export struct ToolsPage {
  @Builder ItemHeader(title: string) {
    Column() {
      Text(title)
        .fontSize(16)
      Divider().strokeWidth(1).color('#F1F3F5').margin({top:20})

    }.width('100%')
    .backgroundColor('#fff')
    .borderRadius(
      {
        topLeft: 20,
        topRight: 20
      }
    )
    .padding(20)
    .padding({bottom:0})
    .alignItems(HorizontalAlign.Start)

  }

  @Builder ItemFooter() {
    Row()
      .width('100%')
      .backgroundColor('#fff')
      .borderRadius(
        {
          bottomLeft: 20,
          bottomRight: 20
        }
      )
      .padding(10)
  }

  build() {
    Column() {
      List() {
        ListItemGroup(
          {
            header: this.ItemHeader('签到'), footer: this.ItemFooter()
          }) {
          ListItem() {
            Row() {
              Column() {
                Text('自动签到')
                  .fontSize(16)
                  .margin({ bottom: 5 })
                  .fontWeight(500)
                Text('自动签到失败将会打开手动签到窗口')
                  .fontColor('#ff929292')
                  .fontSize(13)
              }
              .alignItems(HorizontalAlign.Start)

              Blank()
              Toggle({
                type: ToggleType.Switch
              })
              //.padding(20)
            }
            .padding({left:20,top:10,right:10,bottom:10 })
            .backgroundColor('#fff')
            .width('100%')
          }
          ListItem() {
            Row() {
              Column() {
                Text('社区签到')
                  .fontSize(16)
                  .margin({ bottom: 5 })
                  .fontWeight(500)
                Text('自动签到失败将会打开手动签到窗口')
                  .fontColor('#ff929292')
                  .fontSize(13)
              }
              .alignItems(HorizontalAlign.Start)

              Blank()
              Toggle({
                type: ToggleType.Switch
              })
              //.padding(20)
            }
            .padding({left:20,top:10,right:10,bottom:10 })
            .backgroundColor('#fff')
            .width('100%')
          }
        }
      }
    }
    .padding(20)
    .height('100%')
    .width('100%')
    .backgroundColor('#fff3f3f6')
  }
}