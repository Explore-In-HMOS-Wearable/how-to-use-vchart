import { ChartItem } from '../interfaces/ChartInterfaces';
import {
  areaSpec,
  barSpec,
  boxPlotSpec,
  dualAxisSpec,
  funnelSpec,
  gaugeSpec,
  heatmapSpec,
  lineSpec,
  pieSpec,
  radarSpec,
  roseSpec,
  scatterSpec,
  sunburstSpec,
  treemapSpec,
  wordCloudSpec
} from '../services/ChartSpecs';

@Observed
export class ChartViewModel {
  specs: Array<ChartItem> = [
    { title: 'Line Chart', spec: lineSpec },
    { title: 'Bar Chart', spec: barSpec },
    { title: 'Area Chart', spec: areaSpec },
    { title: 'Pie Chart', spec: pieSpec },
    { title: 'Radar Chart', spec: radarSpec },
    { title: 'Scatter Chart', spec: scatterSpec },
    { title: 'Gauge Chart', spec: gaugeSpec },
    { title: 'Treemap Chart', spec: treemapSpec },
    { title: 'Funnel Chart', spec: funnelSpec },
    { title: 'Heatmap Chart', spec: heatmapSpec },
    { title: 'WordCloud', spec: wordCloudSpec },
    { title: 'Rose Chart', spec: roseSpec },
    { title: 'Sunburst Chart', spec: sunburstSpec },
    { title: 'BoxPlot Chart', spec: boxPlotSpec },
    { title: 'Dual Axis Chart', spec: dualAxisSpec }
  ];
}