import { VChart } from '@visactor/harmony-vchart';
import { ChartSpec } from '../interfaces/ChartInterfaces';

@Component
export struct ChartPage {
  @Prop spec: ChartSpec;
  @Prop title: string;

  build() {
    Column() {
      Text(this.title)
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .margin({ bottom: 8 });

      VChart({ spec: this.spec, w: 140, h: 140 })
    }
    .alignItems(HorizontalAlign.Center)
    .justifyContent(FlexAlign.Center)
    .width('80%')
    .height('100%');
  }
}