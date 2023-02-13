@Entry
@Preview
@Component
export struct MainPage {
  build() {
    RelativeContainer(){
      Text('主页')
        .id('title')
      Image($r('app.media.app_icon'))
        .id('mainImg')
      Text('项目地址：http://github.com/liluoqiushang/Genshin_Tools')
        .id('projectPath')


    }
  }
}