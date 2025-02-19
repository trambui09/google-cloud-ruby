# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/analytics/admin/v1alpha/analytics_admin.proto for package 'google.analytics.admin.v1alpha'
# Original file comments:
# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/analytics/admin/v1alpha/analytics_admin_pb'

module Google
  module Analytics
    module Admin
      module V1alpha
        module AnalyticsAdminService
          # Service Interface for the Analytics Admin API (GA4).
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.analytics.admin.v1alpha.AnalyticsAdminService'

            # Lookup for a single Account.
            rpc :GetAccount, ::Google::Analytics::Admin::V1alpha::GetAccountRequest, ::Google::Analytics::Admin::V1alpha::Account
            # Returns all accounts accessible by the caller.
            #
            # Note that these accounts might not currently have GA4 properties.
            # Soft-deleted (ie: "trashed") accounts are excluded by default.
            # Returns an empty list if no relevant accounts are found.
            rpc :ListAccounts, ::Google::Analytics::Admin::V1alpha::ListAccountsRequest, ::Google::Analytics::Admin::V1alpha::ListAccountsResponse
            # Marks target Account as soft-deleted (ie: "trashed") and returns it.
            #
            # This API does not have a method to restore soft-deleted accounts.
            # However, they can be restored using the Trash Can UI.
            #
            # If the accounts are not restored before the expiration time, the account
            # and all child resources (eg: Properties, GoogleAdsLinks, Streams,
            # UserLinks) will be permanently purged.
            # https://support.google.com/analytics/answer/6154772
            #
            # Returns an error if the target is not found.
            rpc :DeleteAccount, ::Google::Analytics::Admin::V1alpha::DeleteAccountRequest, ::Google::Protobuf::Empty
            # Updates an account.
            rpc :UpdateAccount, ::Google::Analytics::Admin::V1alpha::UpdateAccountRequest, ::Google::Analytics::Admin::V1alpha::Account
            # Requests a ticket for creating an account.
            rpc :ProvisionAccountTicket, ::Google::Analytics::Admin::V1alpha::ProvisionAccountTicketRequest, ::Google::Analytics::Admin::V1alpha::ProvisionAccountTicketResponse
            # Returns summaries of all accounts accessible by the caller.
            rpc :ListAccountSummaries, ::Google::Analytics::Admin::V1alpha::ListAccountSummariesRequest, ::Google::Analytics::Admin::V1alpha::ListAccountSummariesResponse
            # Lookup for a single "GA4" Property.
            rpc :GetProperty, ::Google::Analytics::Admin::V1alpha::GetPropertyRequest, ::Google::Analytics::Admin::V1alpha::Property
            # Returns child Properties under the specified parent Account.
            #
            # Only "GA4" properties will be returned.
            # Properties will be excluded if the caller does not have access.
            # Soft-deleted (ie: "trashed") properties are excluded by default.
            # Returns an empty list if no relevant properties are found.
            rpc :ListProperties, ::Google::Analytics::Admin::V1alpha::ListPropertiesRequest, ::Google::Analytics::Admin::V1alpha::ListPropertiesResponse
            # Creates an "GA4" property with the specified location and attributes.
            rpc :CreateProperty, ::Google::Analytics::Admin::V1alpha::CreatePropertyRequest, ::Google::Analytics::Admin::V1alpha::Property
            # Marks target Property as soft-deleted (ie: "trashed") and returns it.
            #
            # This API does not have a method to restore soft-deleted properties.
            # However, they can be restored using the Trash Can UI.
            #
            # If the properties are not restored before the expiration time, the Property
            # and all child resources (eg: GoogleAdsLinks, Streams, UserLinks)
            # will be permanently purged.
            # https://support.google.com/analytics/answer/6154772
            #
            # Returns an error if the target is not found, or is not an GA4 Property.
            rpc :DeleteProperty, ::Google::Analytics::Admin::V1alpha::DeletePropertyRequest, ::Google::Analytics::Admin::V1alpha::Property
            # Updates a property.
            rpc :UpdateProperty, ::Google::Analytics::Admin::V1alpha::UpdatePropertyRequest, ::Google::Analytics::Admin::V1alpha::Property
            # Gets information about a user's link to an account or property.
            rpc :GetUserLink, ::Google::Analytics::Admin::V1alpha::GetUserLinkRequest, ::Google::Analytics::Admin::V1alpha::UserLink
            # Gets information about multiple users' links to an account or property.
            rpc :BatchGetUserLinks, ::Google::Analytics::Admin::V1alpha::BatchGetUserLinksRequest, ::Google::Analytics::Admin::V1alpha::BatchGetUserLinksResponse
            # Lists all user links on an account or property.
            rpc :ListUserLinks, ::Google::Analytics::Admin::V1alpha::ListUserLinksRequest, ::Google::Analytics::Admin::V1alpha::ListUserLinksResponse
            # Lists all user links on an account or property, including implicit ones
            # that come from effective permissions granted by groups or organization
            # admin roles.
            #
            # If a returned user link does not have direct permissions, they cannot
            # be removed from the account or property directly with the DeleteUserLink
            # command. They have to be removed from the group/etc that gives them
            # permissions, which is currently only usable/discoverable in the GA or GMP
            # UIs.
            rpc :AuditUserLinks, ::Google::Analytics::Admin::V1alpha::AuditUserLinksRequest, ::Google::Analytics::Admin::V1alpha::AuditUserLinksResponse
            # Creates a user link on an account or property.
            #
            # If the user with the specified email already has permissions on the
            # account or property, then the user's existing permissions will be unioned
            # with the permissions specified in the new UserLink.
            rpc :CreateUserLink, ::Google::Analytics::Admin::V1alpha::CreateUserLinkRequest, ::Google::Analytics::Admin::V1alpha::UserLink
            # Creates information about multiple users' links to an account or property.
            #
            # This method is transactional. If any UserLink cannot be created, none of
            # the UserLinks will be created.
            rpc :BatchCreateUserLinks, ::Google::Analytics::Admin::V1alpha::BatchCreateUserLinksRequest, ::Google::Analytics::Admin::V1alpha::BatchCreateUserLinksResponse
            # Updates a user link on an account or property.
            rpc :UpdateUserLink, ::Google::Analytics::Admin::V1alpha::UpdateUserLinkRequest, ::Google::Analytics::Admin::V1alpha::UserLink
            # Updates information about multiple users' links to an account or property.
            rpc :BatchUpdateUserLinks, ::Google::Analytics::Admin::V1alpha::BatchUpdateUserLinksRequest, ::Google::Analytics::Admin::V1alpha::BatchUpdateUserLinksResponse
            # Deletes a user link on an account or property.
            rpc :DeleteUserLink, ::Google::Analytics::Admin::V1alpha::DeleteUserLinkRequest, ::Google::Protobuf::Empty
            # Deletes information about multiple users' links to an account or property.
            rpc :BatchDeleteUserLinks, ::Google::Analytics::Admin::V1alpha::BatchDeleteUserLinksRequest, ::Google::Protobuf::Empty
            # Lookup for a single WebDataStream
            rpc :GetWebDataStream, ::Google::Analytics::Admin::V1alpha::GetWebDataStreamRequest, ::Google::Analytics::Admin::V1alpha::WebDataStream
            # Deletes a web stream on a property.
            rpc :DeleteWebDataStream, ::Google::Analytics::Admin::V1alpha::DeleteWebDataStreamRequest, ::Google::Protobuf::Empty
            # Updates a web stream on a property.
            rpc :UpdateWebDataStream, ::Google::Analytics::Admin::V1alpha::UpdateWebDataStreamRequest, ::Google::Analytics::Admin::V1alpha::WebDataStream
            # Creates a web stream with the specified location and attributes.
            rpc :CreateWebDataStream, ::Google::Analytics::Admin::V1alpha::CreateWebDataStreamRequest, ::Google::Analytics::Admin::V1alpha::WebDataStream
            # Returns child web data streams under the specified parent property.
            #
            # Web data streams will be excluded if the caller does not have access.
            # Returns an empty list if no relevant web data streams are found.
            rpc :ListWebDataStreams, ::Google::Analytics::Admin::V1alpha::ListWebDataStreamsRequest, ::Google::Analytics::Admin::V1alpha::ListWebDataStreamsResponse
            # Lookup for a single IosAppDataStream
            rpc :GetIosAppDataStream, ::Google::Analytics::Admin::V1alpha::GetIosAppDataStreamRequest, ::Google::Analytics::Admin::V1alpha::IosAppDataStream
            # Deletes an iOS app stream on a property.
            rpc :DeleteIosAppDataStream, ::Google::Analytics::Admin::V1alpha::DeleteIosAppDataStreamRequest, ::Google::Protobuf::Empty
            # Updates an iOS app stream on a property.
            rpc :UpdateIosAppDataStream, ::Google::Analytics::Admin::V1alpha::UpdateIosAppDataStreamRequest, ::Google::Analytics::Admin::V1alpha::IosAppDataStream
            # Returns child iOS app data streams under the specified parent property.
            #
            # iOS app data streams will be excluded if the caller does not have access.
            # Returns an empty list if no relevant iOS app data streams are found.
            rpc :ListIosAppDataStreams, ::Google::Analytics::Admin::V1alpha::ListIosAppDataStreamsRequest, ::Google::Analytics::Admin::V1alpha::ListIosAppDataStreamsResponse
            # Lookup for a single AndroidAppDataStream
            rpc :GetAndroidAppDataStream, ::Google::Analytics::Admin::V1alpha::GetAndroidAppDataStreamRequest, ::Google::Analytics::Admin::V1alpha::AndroidAppDataStream
            # Deletes an android app stream on a property.
            rpc :DeleteAndroidAppDataStream, ::Google::Analytics::Admin::V1alpha::DeleteAndroidAppDataStreamRequest, ::Google::Protobuf::Empty
            # Updates an android app stream on a property.
            rpc :UpdateAndroidAppDataStream, ::Google::Analytics::Admin::V1alpha::UpdateAndroidAppDataStreamRequest, ::Google::Analytics::Admin::V1alpha::AndroidAppDataStream
            # Returns child android app streams under the specified parent property.
            #
            # Android app streams will be excluded if the caller does not have access.
            # Returns an empty list if no relevant android app streams are found.
            rpc :ListAndroidAppDataStreams, ::Google::Analytics::Admin::V1alpha::ListAndroidAppDataStreamsRequest, ::Google::Analytics::Admin::V1alpha::ListAndroidAppDataStreamsResponse
            # Returns the singleton enhanced measurement settings for this web stream.
            # Note that the stream must enable enhanced measurement for these settings to
            # take effect.
            rpc :GetEnhancedMeasurementSettings, ::Google::Analytics::Admin::V1alpha::GetEnhancedMeasurementSettingsRequest, ::Google::Analytics::Admin::V1alpha::EnhancedMeasurementSettings
            # Updates the singleton enhanced measurement settings for this web stream.
            # Note that the stream must enable enhanced measurement for these settings to
            # take effect.
            rpc :UpdateEnhancedMeasurementSettings, ::Google::Analytics::Admin::V1alpha::UpdateEnhancedMeasurementSettingsRequest, ::Google::Analytics::Admin::V1alpha::EnhancedMeasurementSettings
            # Creates a FirebaseLink.
            #
            # Properties can have at most one FirebaseLink.
            rpc :CreateFirebaseLink, ::Google::Analytics::Admin::V1alpha::CreateFirebaseLinkRequest, ::Google::Analytics::Admin::V1alpha::FirebaseLink
            # Updates a FirebaseLink on a property
            rpc :UpdateFirebaseLink, ::Google::Analytics::Admin::V1alpha::UpdateFirebaseLinkRequest, ::Google::Analytics::Admin::V1alpha::FirebaseLink
            # Deletes a FirebaseLink on a property
            rpc :DeleteFirebaseLink, ::Google::Analytics::Admin::V1alpha::DeleteFirebaseLinkRequest, ::Google::Protobuf::Empty
            # Lists FirebaseLinks on a property.
            # Properties can have at most one FirebaseLink.
            rpc :ListFirebaseLinks, ::Google::Analytics::Admin::V1alpha::ListFirebaseLinksRequest, ::Google::Analytics::Admin::V1alpha::ListFirebaseLinksResponse
            # Returns the Site Tag for the specified web stream.
            # Site Tags are immutable singletons.
            rpc :GetGlobalSiteTag, ::Google::Analytics::Admin::V1alpha::GetGlobalSiteTagRequest, ::Google::Analytics::Admin::V1alpha::GlobalSiteTag
            # Creates a GoogleAdsLink.
            rpc :CreateGoogleAdsLink, ::Google::Analytics::Admin::V1alpha::CreateGoogleAdsLinkRequest, ::Google::Analytics::Admin::V1alpha::GoogleAdsLink
            # Updates a GoogleAdsLink on a property
            rpc :UpdateGoogleAdsLink, ::Google::Analytics::Admin::V1alpha::UpdateGoogleAdsLinkRequest, ::Google::Analytics::Admin::V1alpha::GoogleAdsLink
            # Deletes a GoogleAdsLink on a property
            rpc :DeleteGoogleAdsLink, ::Google::Analytics::Admin::V1alpha::DeleteGoogleAdsLinkRequest, ::Google::Protobuf::Empty
            # Lists GoogleAdsLinks on a property.
            rpc :ListGoogleAdsLinks, ::Google::Analytics::Admin::V1alpha::ListGoogleAdsLinksRequest, ::Google::Analytics::Admin::V1alpha::ListGoogleAdsLinksResponse
            # Get data sharing settings on an account.
            # Data sharing settings are singletons.
            rpc :GetDataSharingSettings, ::Google::Analytics::Admin::V1alpha::GetDataSharingSettingsRequest, ::Google::Analytics::Admin::V1alpha::DataSharingSettings
            # Searches through all changes to an account or its children given the
            # specified set of filters.
            rpc :SearchChangeHistoryEvents, ::Google::Analytics::Admin::V1alpha::SearchChangeHistoryEventsRequest, ::Google::Analytics::Admin::V1alpha::SearchChangeHistoryEventsResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
