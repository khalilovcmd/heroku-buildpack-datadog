#!/usr/bin/env bash

function error() {
  echo " !     $*" >&2
  exit 1
}

function topic() {
  echo "-----> $*"
}

function indent() {
  c='s/^/       /'
  case $(uname) in
    Darwin) sed -l "$c";;
    *)      sed -u "$c";;
  esac
}

DELETE_INTEGRATIONS=(btrfs cassandra_nodetool ceph cisco_aci cockroachdb \
consul coredns crio ecs_fargate envoy go-metro harbor hdfs_datanode hdfs_namenode \
hive ibm_db2 ibm_mq ibm_was istio kube_apiserver_metrics kube_controller_manager \
kube_dns kube_metrics_server kube_proxy kube_scheduler kubelet kubernetes_state \
kyototycoon linkerd mapreduce marathon mesos_master mesos_slave nagios nfsstat \
nginx_ingress_controller openldap openstack openstack_controller postfix \
powerdns_recursor presto riakcs snmp sqlserver squid statsd tokumx vsphere yarn)
