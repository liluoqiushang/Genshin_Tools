@Entry
@Preview
@Component
export struct ToolsPage {
  build() {
    Column() {
      Search(
        {
          placeholder: '输入想要搜索的功能'
        }
      )
        .width('100%')
        .searchButton('搜索')
        .placeholderFont({
          size: 15
        })
        .textFont({
          size: 15
        }
        )
    }
    .padding(20)
    .height('100%')
    .width('100%')
  }
}