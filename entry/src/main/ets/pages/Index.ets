import { ChartPage } from '../components/ChartPage';
import { ChartItem } from '../interfaces/ChartInterfaces';
import { ChartViewModel } from '../viewmodels/ChartViewModel';

@Entry
@Component
struct ChartSwiper {
  private viewModel: ChartViewModel = new ChartViewModel();

  build() {
    Swiper() {
      ForEach(this.viewModel.specs, (item: ChartItem) => {
        ChartPage({ spec: item.spec, title: item.title })
      }, (item: ChartItem) => item.title)
    }
    .align(Alignment.Center)
    .indicator(true)
    .vertical(true)
    .loop(true)
    .width('100%')
    .height('80%');
  }
}
