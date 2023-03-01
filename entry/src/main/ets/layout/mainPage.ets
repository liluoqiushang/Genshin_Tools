@Entry
@Preview
@Component
export struct MainPage {
  build() {
    RelativeContainer() {
      Text('欢迎来到提瓦特，旅行者请开始你的冒险吧')
        .textAlign(TextAlign.Center)
        .id('title')
        .fontSize(35)
        .fontWeight(FontWeight.Bold)
        .margin(20)
        .alignRules(
          {
            middle:
            {
              anchor: '__container__',
              align: HorizontalAlign.Center
            }
          }
        )
      Image($r('app.media.app_icon'))
        .width('50%')
        .height('50%')
        .id('mainImg')
        .alignRules({
          center: {
            anchor: '__container__',
            align: VerticalAlign.Center
          },
          middle: {
            anchor: '__container__',
            align: HorizontalAlign.Center
          }
        })
      Text('作者：沐雨璃殇\nhttp://github.com/liluoqiushang/Genshin_Tools')
        .id('projectPath')
        .width('100%')
        .alignRules({
          right:{
            align:HorizontalAlign.End,
            anchor:'__container__'
          },
          bottom:{
            anchor:'__container__',
            align:VerticalAlign.Bottom
          }
        }
        )
        .textAlign(TextAlign.End)
    }
    .padding(10)
  }
}