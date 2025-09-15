/* Base types */
export interface DataWrapper<T> {
  values: T[];
}

export interface ChartItem {
  title: string;
  spec: ChartSpec;
}

/* Style interfaces */
export interface LineStyle {
  stroke?: string;
  lineWidth?: number;
}

export interface BarStyle {
  fill?: string;
}

export interface AreaStyle {
  fill?: string;
  opacity?: number;
}

export interface PointStyle {
  fill?: string;
}

export interface PointConfig {
  sizeField?: number;
  style?: PointStyle;
}

export interface AreaConfig {
  visible?: boolean;
  style?: AreaStyle;
}

export interface GaugeAxis {
  startAngle?: number;
  endAngle?: number;
}

export interface PointerConfig {
  visible?: boolean;
}

export interface LabelConfig {
  visible?: boolean;
  formatter?: (value: number) => string;
}

export interface TooltipConfig {
  visible?: boolean;
}

export interface LegendConfig {
  visible?: boolean;
  position?: 'top' | 'bottom' | 'left' | 'right';
}

export interface FunnelStyle {
  fill?: string;
  opacity?: number;
}

export interface HeatmapStyle {
  colorField?: string;
  palette?: string | string[];
}

export interface WordCloudConfig {
  colorField?: string;
  sizeField?: 'value' | string;
  spiral?: 'archimedean' | 'rectangular';
  padding?: number;
}

export interface RoseStyle {
  fill?: string;
}

export interface SunburstConfig {
  innerRadius?: number;
  outerRadius?: number;
}

export interface BoxPlotStyle {
  stroke?: string;
  fill?: string;
}

/* Data interfaces */
export interface LineDatum {
  month: string;
  value: number;
}

export interface BarDatum {
  country: string;
  pop: number;
}

export interface AreaDatum {
  year: number;
  uv: number;
}

export interface PieDatum {
  item: string;
  percent: number;
}

export interface RadarDatum {
  skill: string;
  value: number;
}

export interface ScatterDatum {
  height: number;
  weight: number;
}

export interface GaugeDatum {
  name: string;
  value: number;
}

export interface TreemapDatum {
  name: string;
  value: number;
  children?: TreemapDatum[];
}

export interface FunnelDatum {
  stage: string;
  value: number;
}

export interface HeatmapDatum {
  x: string | number;
  y: string | number;
  value: number;
}

export interface WordcloudDatum {
  text: string;
  value: number;
}

export interface RoseDatum {
  category: string;
  value: number;
}

export interface SunburstDatum {
  name: string;
  value: number;
  children?: SunburstDatum[];
}

export interface BoxPlotDatum {
  x: string;
  min: number;
  q1: number;
  median: number;
  q3: number;
  max: number;
}

export interface DualAxisDatum {
  category: string;
  value1: number;
  value2: number;
}

/* Replace inline object literals with proper interfaces */
export interface HierarchyConfigField {
  field: string;
}

export interface GeometryOption {
  geometry: 'line' | 'bar';
  color?: string;
}

/* Chart specification interfaces */
export interface LineSpec {
  readonly type: 'line';
  data: DataWrapper<LineDatum>;
  xField: string;
  yField: string;
  lineStyle?: LineStyle;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
  legend?: LegendConfig;
}

export interface BarSpec {
  readonly type: 'bar';
  data: DataWrapper<BarDatum>;
  xField: string;
  yField: string;
  barStyle?: BarStyle;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
  legend?: LegendConfig;
}

export interface AreaSpec {
  readonly type: 'area';
  data: DataWrapper<AreaDatum>;
  xField: string;
  yField: string;
  areaStyle?: AreaStyle;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
  legend?: LegendConfig;
}

export interface PieSpec {
  readonly type: 'pie';
  data: DataWrapper<PieDatum>;
  angleField: string;
  categoryField: string;
  innerRadius?: number;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
  legend?: LegendConfig;
}

export interface RadarSpec {
  readonly type: 'radar';
  data: DataWrapper<RadarDatum>;
  angleField: string;
  radiusField: string;
  area?: AreaConfig;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
  legend?: LegendConfig;
}

export interface ScatterSpec {
  readonly type: 'scatter';
  data: DataWrapper<ScatterDatum>;
  xField: string;
  yField: string;
  point?: PointConfig;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
  legend?: LegendConfig;
}

export interface GaugeSpec {
  readonly type: 'gauge';
  data: DataWrapper<GaugeDatum>;
  valueField: string;
  gaugeAxis?: GaugeAxis;
  pointer?: PointerConfig;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
}

export interface TreemapSpec {
  readonly type: 'treemap';
  data: DataWrapper<TreemapDatum>;
  colorField?: string;
  padding?: number;
  hierarchyConfig?: HierarchyConfigField;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
}

export interface FunnelSpec {
  readonly type: 'funnel';
  data: DataWrapper<FunnelDatum>;
  valueField: string;
  categoryField: string;
  funnelStyle?: FunnelStyle;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
  legend?: LegendConfig;
}

export interface HeatmapSpec {
  readonly type: 'heatmap';
  data: DataWrapper<HeatmapDatum>;
  xField: string;
  yField: string;
  colorField: string;
  color?: string | string[];
  heatmapStyle?: HeatmapStyle;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
}

export interface WordCloudSpec {
  readonly type: 'wordcloud';
  data: DataWrapper<WordcloudDatum>;
  wordField: string;
  weightField: string;
  wordCloudConfig?: WordCloudConfig;
  tooltip?: TooltipConfig;
}

export interface RoseSpec {
  readonly type: 'rose';
  data: DataWrapper<RoseDatum>;
  radiusField: string;
  categoryField: string;
  roseStyle?: RoseStyle;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
  legend?: LegendConfig;
}

export interface SunburstSpec {
  readonly type: 'sunburst';
  data: DataWrapper<SunburstDatum>;
  hierarchyConfig: HierarchyConfigField;
  colorField?: string;
  sunburstConfig?: SunburstConfig;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
}

export interface BoxPlotSpec {
  readonly type: 'boxplot';
  data: DataWrapper<BoxPlotDatum>;
  xField: string;
  yFields: string[];
  boxPlotStyle?: BoxPlotStyle;
  tooltip?: TooltipConfig;
  label?: LabelConfig;
}

export interface DualAxisSpec {
  readonly type: 'dualAxes';
  data: DataWrapper<DualAxisDatum>;
  xField: string;
  yField: [string, string];
  geometryOptions: [GeometryOption, GeometryOption];
  tooltip?: TooltipConfig;
  legend?: LegendConfig;
}

/* Union type for all chart specifications */
export type ChartSpec =
  | LineSpec
    | BarSpec
    | AreaSpec
    | PieSpec
    | RadarSpec
    | ScatterSpec
    | GaugeSpec
    | TreemapSpec
    | FunnelSpec
    | HeatmapSpec
    | WordCloudSpec
    | RoseSpec
    | SunburstSpec
    | BoxPlotSpec
    | DualAxisSpec;