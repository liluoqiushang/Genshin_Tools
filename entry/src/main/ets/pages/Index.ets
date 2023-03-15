import { MainPage } from '../layout/mainPage'
import { ToolsPage } from '../layout/toolsPage'

@Entry
@Component
struct Index {
  @State tabsIndex: number = 0
  private controller: TabsController = new TabsController()

  @Builder MenuItem(index: number, title: string, itemSwitch: boolean) {
    Row() {
      Text(title)
        .fontSize(15)
        .margin(5)
        .fontColor(this.tabsIndex == index ? '#ffffff' : '#ff474747')
      Blank()
      if (itemSwitch) {
        Toggle({ type: ToggleType.Switch })
      }

    }
    .padding({ left: 10, top: 5, bottom: 5, right: 10 })
    .backgroundColor(this.tabsIndex == index ? '#ff1938e9' : '#00000000')
    .borderRadius(10)
    .onClick(() => {
      this.tabsIndex = index
    })
    .width('100%')
  }

  @Builder MenuText(title: string) {
    Text(title).fontSize(15).fontWeight(600).margin({ top: 10, bottom: 10 })
  }

  build() {
    Row() {
      List() {

        ListItemGroup({ header: this.MenuText('主页') }) {
          ListItem() {
            this.MenuItem(0, '主页', false)
          }
        }

        ListItemGroup({ header: this.MenuText('功能') }) {
          ListItem() {
            this.MenuItem(1, '主页', false)
          }
        }
      }
      .margin(10)
      .width(190)
      .height('100%')

      Swiper() {

          MainPage()
          ToolsPage()

      }.height('100%')
      .indicator(false)
      .index(this.tabsIndex)
      .layoutWeight(1)
      .vertical(true)

      //.loop(false)
      .onChange((index:number)=>{
        this.tabsIndex=index
      })


    }
    .width('100%')
    .height('100%')
    .backgroundColor('#fff3f3f6')

  }
}