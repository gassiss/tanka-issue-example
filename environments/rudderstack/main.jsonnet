local rudderstack = import 'rudderstack/rudderstack.libsonnet';
local spec = import 'spec.json';
{
  _config+:: {
    namespace: spec.spec.namespace,
    cluster_name: spec.metadata.labels.cluster_name,
  },
  _images+:: (import 'images.libsonnet'),

  rudderstack: rudderstack,
}
