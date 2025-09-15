import {
  AreaSpec,
  BarSpec,
  BoxPlotSpec,
  DualAxisSpec,
  FunnelSpec,
  GaugeSpec,
  HeatmapSpec,
  LineSpec,
  PieSpec,
  RadarSpec,
  RoseSpec,
  ScatterSpec,
  SunburstSpec,
  TreemapSpec,
  WordCloudSpec
} from '../interfaces/ChartInterfaces';

export const lineSpec: LineSpec = {
  type: 'line',
  data: {
    values: [
      { month: 'Jan', value: 37 },
      { month: 'Feb', value: 52 },
      { month: 'Mar', value: 61 },
      { month: 'Apr', value: 45 },
      { month: 'May', value: 48 },
      { month: 'Jun', value: 59 }
    ]
  },
  xField: 'month',
  yField: 'value',
  lineStyle: { stroke: '#38B6FF', lineWidth: 3 },
  tooltip: { visible: true }
};

export const barSpec: BarSpec = {
  type: 'bar',
  data: {
    values: [
      { country: 'CN', pop: 1412 },
      { country: 'IN', pop: 1393 },
      { country: 'US', pop: 332 },
      { country: 'ID', pop: 276 }
    ]
  },
  xField: 'country',
  yField: 'pop',
  barStyle: { fill: '#FF7F0E' },
  label: { visible: true }
};

export const areaSpec: AreaSpec = {
  type: 'area',
  data: {
    values: [
      { year: 2017, uv: 35 },
      { year: 2018, uv: 42 },
      { year: 2019, uv: 51 },
      { year: 2020, uv: 61 },
      { year: 2021, uv: 73 }
    ]
  },
  xField: 'year',
  yField: 'uv',
  areaStyle: { fill: '#A1D99B', opacity: 0.8 },
  tooltip: { visible: true }
};

export const pieSpec: PieSpec = {
  type: 'pie',
  data: {
    values: [
      { item: 'Chrome', percent: 63.5 },
      { item: 'Safari', percent: 19.4 },
      { item: 'Edge', percent: 4.9 },
      { item: 'Firefox', percent: 3.7 },
      { item: 'Others', percent: 8.5 }
    ]
  },
  angleField: 'percent',
  categoryField: 'item',
  innerRadius: 0,
  legend: { visible: true, position: 'bottom' }
};

export const radarSpec: RadarSpec = {
  type: 'radar',
  data: {
    values: [
      { skill: 'HTML', value: 85 },
      { skill: 'CSS', value: 75 },
      { skill: 'JS', value: 90 },
      { skill: 'TS', value: 70 },
      { skill: 'ArkTS', value: 60 }
    ]
  },
  angleField: 'skill',
  radiusField: 'value',
  area: { visible: true, style: { fill: '#8884d8', opacity: 0.4 } }
};

export const scatterSpec: ScatterSpec = {
  type: 'scatter',
  data: {
    values: [
      { height: 150, weight: 50 },
      { height: 160, weight: 57 },
      { height: 170, weight: 66 },
      { height: 180, weight: 75 },
      { height: 190, weight: 85 }
    ]
  },
  xField: 'height',
  yField: 'weight',
  point: { sizeField: 5, style: { fill: '#00BFC4' } }
};

export const gaugeSpec: GaugeSpec = {
  type: 'gauge',
  data: { values: [{ name: 'CPU', value: 62 }] },
  valueField: 'value',
  gaugeAxis: { startAngle: -Math.PI * 3 / 4, endAngle: Math.PI * 3 / 4 },
  pointer: { visible: true }
};

// New chart types
export const treemapSpec: TreemapSpec = {
  type: 'treemap',
  data: {
    values: [
      {
        name: 'Root',
        value: 100,
        children: [
          { name: 'Category A', value: 40 },
          { name: 'Category B', value: 30 },
          { name: 'Category C', value: 20 },
          { name: 'Category D', value: 10 }
        ]
      }
    ]
  },
  colorField: 'name',
  hierarchyConfig: { field: 'children' },
  tooltip: { visible: true }
};

export const funnelSpec: FunnelSpec = {
  type: 'funnel',
  data: {
    values: [
      { stage: 'Awareness', value: 5000 },
      { stage: 'Interest', value: 3000 },
      { stage: 'Consideration', value: 2000 },
      { stage: 'Intent', value: 1000 },
      { stage: 'Purchase', value: 500 }
    ]
  },
  categoryField: 'stage',
  valueField: 'value',
  funnelStyle: { opacity: 0.8 },
  label: { visible: true }
};

export const heatmapSpec: HeatmapSpec = {
  type: 'heatmap',
  data: {
    values: [
      { x: 0, y: 0, value: 10 },
      { x: 0, y: 1, value: 19 },
      { x: 0, y: 2, value: 8 },
      { x: 1, y: 0, value: 5 },
      { x: 1, y: 1, value: 29 },
      { x: 1, y: 2, value: 15 },
      { x: 2, y: 0, value: 7 },
      { x: 2, y: 1, value: 22 },
      { x: 2, y: 2, value: 17 }
    ]
  },
  xField: 'x',
  yField: 'y',
  colorField: 'value',
  color: ['#BAE7FF', '#1890FF', '#0050B3'],
  tooltip: { visible: true }
};

export const wordCloudSpec: WordCloudSpec = {
  type: 'wordcloud',
  data: {
    values: [
      { text: 'ArkTS', value: 100 },
      { text: 'Harmony', value: 90 },
      { text: 'VChart', value: 80 },
      { text: 'HarmonyOS', value: 70 },
      { text: 'Development', value: 60 },
      { text: 'Mobile', value: 50 },
      { text: 'Web', value: 40 },
      { text: 'IoT', value: 30 },
      { text: 'Smart', value: 20 },
      { text: 'Design', value: 10 }
    ]
  },
  wordField: 'text',
  weightField: 'value',
  wordCloudConfig: {
    spiral: 'archimedean',
    padding: 2
  }
};

export const roseSpec: RoseSpec = {
  type: 'rose',
  data: {
    values: [
      { category: 'Category 1', value: 30 },
      { category: 'Category 2', value: 25 },
      { category: 'Category 3', value: 18 },
      { category: 'Category 4', value: 15 },
      { category: 'Category 5', value: 10 }
    ]
  },
  categoryField: 'category',
  radiusField: 'value',
  roseStyle: { fill: '#5B8FF9' },
  label: { visible: true }
};

export const sunburstSpec: SunburstSpec = {
  type: 'sunburst',
  data: {
    values: [
      {
        name: 'Root',
        value: 100,
        children: [
          {
            name: 'Category A',
            value: 40,
            children: [
              { name: 'Sub A1', value: 25 },
              { name: 'Sub A2', value: 15 }
            ]
          },
          { name: 'Category B', value: 30 },
          { name: 'Category C', value: 20 },
          { name: 'Category D', value: 10 }
        ]
      }
    ]
  },
  hierarchyConfig: { field: 'children' },
  colorField: 'name',
  sunburstConfig: { innerRadius: 0.2, outerRadius: 0.8 }
};

export const boxPlotSpec: BoxPlotSpec = {
  type: 'boxplot',
  data: {
    values: [
      {
        x: 'A',
        min: 10,
        q1: 15,
        median: 20,
        q3: 25,
        max: 30
      },
      {
        x: 'B',
        min: 15,
        q1: 20,
        median: 25,
        q3: 30,
        max: 35
      },
      {
        x: 'C',
        min: 20,
        q1: 25,
        median: 30,
        q3: 35,
        max: 40
      },
      {
        x: 'D',
        min: 25,
        q1: 30,
        median: 35,
        q3: 40,
        max: 45
      }
    ]
  },
  xField: 'x',
  yFields: ['min', 'q1', 'median', 'q3', 'max'],
  boxPlotStyle: { fill: '#95DE64', stroke: '#389E0D' }
};

export const dualAxisSpec: DualAxisSpec = {
  type: 'dualAxes',
  data: {
    values: [
      { category: 'Jan', value1: 2500, value2: 25 },
      { category: 'Feb', value1: 3500, value2: 35 },
      { category: 'Mar', value1: 3000, value2: 30 },
      { category: 'Apr', value1: 4500, value2: 45 },
      { category: 'May', value1: 5000, value2: 50 },
      { category: 'Jun', value1: 4000, value2: 40 }
    ]
  },
  xField: 'category',
  yField: ['value1', 'value2'],
  geometryOptions: [
    { geometry: 'bar', color: '#5B8FF9' },
    { geometry: 'line', color: '#F6BD16' }
  ],
  tooltip: { visible: true },
  legend: { visible: true }
};