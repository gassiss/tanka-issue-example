local helm = (import 'github.com/grafana/jsonnet-libs/tanka-util/helm.libsonnet').new(std.thisFile);
{
  rudderstackChart: helm.template('rudderstack', './rudderstack-helm', {
    namespace: 'rudderstack',
    values: $._config.rudderstack.values,
  })
}
