# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/bigtable/admin/v2/instance.proto


require 'google/protobuf'

require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/bigtable/admin/v2/common_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/bigtable/admin/v2/instance.proto", :syntax => :proto3) do
    add_message "google.bigtable.admin.v2.Instance" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :state, :enum, 3, "google.bigtable.admin.v2.Instance.State"
      optional :type, :enum, 4, "google.bigtable.admin.v2.Instance.Type"
      map :labels, :string, :string, 5
    end
    add_enum "google.bigtable.admin.v2.Instance.State" do
      value :STATE_NOT_KNOWN, 0
      value :READY, 1
      value :CREATING, 2
    end
    add_enum "google.bigtable.admin.v2.Instance.Type" do
      value :TYPE_UNSPECIFIED, 0
      value :PRODUCTION, 1
      value :DEVELOPMENT, 2
    end
    add_message "google.bigtable.admin.v2.Cluster" do
      optional :name, :string, 1
      optional :location, :string, 2
      optional :state, :enum, 3, "google.bigtable.admin.v2.Cluster.State"
      optional :serve_nodes, :int32, 4
      optional :default_storage_type, :enum, 5, "google.bigtable.admin.v2.StorageType"
    end
    add_enum "google.bigtable.admin.v2.Cluster.State" do
      value :STATE_NOT_KNOWN, 0
      value :READY, 1
      value :CREATING, 2
      value :RESIZING, 3
      value :DISABLED, 4
    end
    add_message "google.bigtable.admin.v2.AppProfile" do
      optional :name, :string, 1
      optional :etag, :string, 2
      optional :description, :string, 3
      oneof :routing_policy do
        optional :multi_cluster_routing_use_any, :message, 5, "google.bigtable.admin.v2.AppProfile.MultiClusterRoutingUseAny"
        optional :single_cluster_routing, :message, 6, "google.bigtable.admin.v2.AppProfile.SingleClusterRouting"
      end
    end
    add_message "google.bigtable.admin.v2.AppProfile.MultiClusterRoutingUseAny" do
    end
    add_message "google.bigtable.admin.v2.AppProfile.SingleClusterRouting" do
      optional :cluster_id, :string, 1
      optional :allow_transactional_writes, :bool, 2
    end
  end
end

module Google
  module Cloud
    module Bigtable
      module Admin
        module V2
          Instance = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Instance").msgclass
          Instance::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Instance.State").enummodule
          Instance::Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Instance.Type").enummodule
          Cluster = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Cluster").msgclass
          Cluster::State = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.Cluster.State").enummodule
          AppProfile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.AppProfile").msgclass
          AppProfile::MultiClusterRoutingUseAny = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.AppProfile.MultiClusterRoutingUseAny").msgclass
          AppProfile::SingleClusterRouting = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.bigtable.admin.v2.AppProfile.SingleClusterRouting").msgclass
        end
      end
    end
  end
end
