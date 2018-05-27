# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf'


##
# Imports
#
require 'google/protobuf/descriptor.pb'

module Trezor
  module Protobuf
    ::Protobuf::Optionable.inject(self) { ::Google::Protobuf::FileOptions }

    ##
    # Enum Classes
    #
    class FailureType < ::Protobuf::Enum
      define :Failure_UnexpectedMessage, 1
      define :Failure_ButtonExpected, 2
      define :Failure_DataError, 3
      define :Failure_ActionCancelled, 4
      define :Failure_PinExpected, 5
      define :Failure_PinCancelled, 6
      define :Failure_PinInvalid, 7
      define :Failure_InvalidSignature, 8
      define :Failure_ProcessError, 9
      define :Failure_NotEnoughFunds, 10
      define :Failure_NotInitialized, 11
      define :Failure_PinMismatch, 12
      define :Failure_FirmwareError, 99
    end

    class OutputScriptType < ::Protobuf::Enum
      define :PAYTOADDRESS, 0
      define :PAYTOSCRIPTHASH, 1
      define :PAYTOMULTISIG, 2
      define :PAYTOOPRETURN, 3
      define :PAYTOWITNESS, 4
      define :PAYTOP2SHWITNESS, 5
    end

    class InputScriptType < ::Protobuf::Enum
      define :SPENDADDRESS, 0
      define :SPENDMULTISIG, 1
      define :EXTERNAL, 2
      define :SPENDWITNESS, 3
      define :SPENDP2SHWITNESS, 4
    end

    class RequestType < ::Protobuf::Enum
      define :TXINPUT, 0
      define :TXOUTPUT, 1
      define :TXMETA, 2
      define :TXFINISHED, 3
      define :TXEXTRADATA, 4
    end

    class ButtonRequestType < ::Protobuf::Enum
      define :ButtonRequest_Other, 1
      define :ButtonRequest_FeeOverThreshold, 2
      define :ButtonRequest_ConfirmOutput, 3
      define :ButtonRequest_ResetDevice, 4
      define :ButtonRequest_ConfirmWord, 5
      define :ButtonRequest_WipeDevice, 6
      define :ButtonRequest_ProtectCall, 7
      define :ButtonRequest_SignTx, 8
      define :ButtonRequest_FirmwareCheck, 9
      define :ButtonRequest_Address, 10
      define :ButtonRequest_PublicKey, 11
      define :ButtonRequest_MnemonicWordCount, 12
      define :ButtonRequest_MnemonicInput, 13
      define :ButtonRequest_PassphraseType, 14
    end

    class PinMatrixRequestType < ::Protobuf::Enum
      define :PinMatrixRequestType_Current, 1
      define :PinMatrixRequestType_NewFirst, 2
      define :PinMatrixRequestType_NewSecond, 3
    end

    class RecoveryDeviceType < ::Protobuf::Enum
      define :RecoveryDeviceType_ScrambledWords, 0
      define :RecoveryDeviceType_Matrix, 1
    end

    class WordRequestType < ::Protobuf::Enum
      define :WordRequestType_Plain, 0
      define :WordRequestType_Matrix9, 1
      define :WordRequestType_Matrix6, 2
    end

    class PassphraseSourceType < ::Protobuf::Enum
      define :ASK, 0
      define :DEVICE, 1
      define :HOST, 2
    end

    class NEMMosaicLevy < ::Protobuf::Enum
      define :MosaicLevy_Absolute, 1
      define :MosaicLevy_Percentile, 2
    end

    class NEMSupplyChangeType < ::Protobuf::Enum
      define :SupplyChange_Increase, 1
      define :SupplyChange_Decrease, 2
    end

    class NEMModificationType < ::Protobuf::Enum
      define :CosignatoryModification_Add, 1
      define :CosignatoryModification_Delete, 2
    end

    class NEMImportanceTransferMode < ::Protobuf::Enum
      define :ImportanceTransfer_Activate, 1
      define :ImportanceTransfer_Deactivate, 2
    end

    class LiskTransactionType < ::Protobuf::Enum
      define :Transfer, 0
      define :RegisterSecondPassphrase, 1
      define :RegisterDelegate, 2
      define :CastVotes, 3
      define :RegisterMultisignatureAccount, 4
      define :CreateDapp, 5
      define :TransferIntoDapp, 6
      define :TransferOutOfDapp, 7
    end


    ##
    # Message Classes
    #
    class HDNodeType < ::Protobuf::Message; end
    class HDNodePathType < ::Protobuf::Message; end
    class MultisigRedeemScriptType < ::Protobuf::Message; end
    class TxInputType < ::Protobuf::Message; end
    class TxOutputType < ::Protobuf::Message; end
    class TxOutputBinType < ::Protobuf::Message; end
    class TransactionType < ::Protobuf::Message; end
    class TxRequestDetailsType < ::Protobuf::Message; end
    class TxRequestSerializedType < ::Protobuf::Message; end
    class IdentityType < ::Protobuf::Message; end
    class NEMTransactionCommon < ::Protobuf::Message; end
    class NEMTransfer < ::Protobuf::Message; end
    class NEMMosaic < ::Protobuf::Message; end
    class NEMProvisionNamespace < ::Protobuf::Message; end
    class NEMMosaicCreation < ::Protobuf::Message; end
    class NEMMosaicDefinition < ::Protobuf::Message; end
    class NEMMosaicSupplyChange < ::Protobuf::Message; end
    class NEMAggregateModification < ::Protobuf::Message; end
    class NEMCosignatoryModification < ::Protobuf::Message; end
    class NEMImportanceTransfer < ::Protobuf::Message; end
    class StellarAssetType < ::Protobuf::Message; end
    class LiskTransactionCommon < ::Protobuf::Message; end
    class LiskTransactionAsset < ::Protobuf::Message; end
    class LiskSignatureType < ::Protobuf::Message; end
    class LiskDelegateType < ::Protobuf::Message; end
    class LiskMultisignatureType < ::Protobuf::Message; end


    ##
    # File Options
    #
    set_option :java_package, "com.satoshilabs.trezor.lib.protobuf"
    set_option :java_outer_classname, "TrezorType"


    ##
    # Message Fields
    #
    class HDNodeType
      required :uint32, :depth, 1
      required :uint32, :fingerprint, 2
      required :uint32, :child_num, 3
      required :bytes, :chain_code, 4
      optional :bytes, :private_key, 5
      optional :bytes, :public_key, 6
    end

    class HDNodePathType
      required ::Trezor::Protobuf::HDNodeType, :node, 1
      repeated :uint32, :address_n, 2
    end

    class MultisigRedeemScriptType
      repeated ::Trezor::Protobuf::HDNodePathType, :pubkeys, 1
      repeated :bytes, :signatures, 2
      optional :uint32, :m, 3
    end

    class TxInputType
      repeated :uint32, :address_n, 1
      required :bytes, :prev_hash, 2
      required :uint32, :prev_index, 3
      optional :bytes, :script_sig, 4
      optional :uint32, :sequence, 5, :default => 4294967295
      optional ::Trezor::Protobuf::InputScriptType, :script_type, 6, :default => ::Trezor::Protobuf::InputScriptType::SPENDADDRESS
      optional ::Trezor::Protobuf::MultisigRedeemScriptType, :multisig, 7
      optional :uint64, :amount, 8
      optional :uint32, :decred_tree, 9
      optional :uint32, :decred_script_version, 10
    end

    class TxOutputType
      optional :string, :address, 1
      repeated :uint32, :address_n, 2
      required :uint64, :amount, 3
      required ::Trezor::Protobuf::OutputScriptType, :script_type, 4
      optional ::Trezor::Protobuf::MultisigRedeemScriptType, :multisig, 5
      optional :bytes, :op_return_data, 6
      optional :uint32, :decred_script_version, 7
    end

    class TxOutputBinType
      required :uint64, :amount, 1
      required :bytes, :script_pubkey, 2
      optional :uint32, :decred_script_version, 3
    end

    class TransactionType
      optional :uint32, :version, 1
      repeated ::Trezor::Protobuf::TxInputType, :inputs, 2
      repeated ::Trezor::Protobuf::TxOutputBinType, :bin_outputs, 3
      repeated ::Trezor::Protobuf::TxOutputType, :outputs, 5
      optional :uint32, :lock_time, 4
      optional :uint32, :inputs_cnt, 6
      optional :uint32, :outputs_cnt, 7
      optional :bytes, :extra_data, 8
      optional :uint32, :extra_data_len, 9
      optional :uint32, :decred_expiry, 10
      optional :bool, :overwintered, 11
    end

    class TxRequestDetailsType
      optional :uint32, :request_index, 1
      optional :bytes, :tx_hash, 2
      optional :uint32, :extra_data_len, 3
      optional :uint32, :extra_data_offset, 4
    end

    class TxRequestSerializedType
      optional :uint32, :signature_index, 1
      optional :bytes, :signature, 2
      optional :bytes, :serialized_tx, 3
    end

    class IdentityType
      optional :string, :proto, 1
      optional :string, :user, 2
      optional :string, :host, 3
      optional :string, :port, 4
      optional :string, :path, 5
      optional :uint32, :index, 6, :default => 0
    end

    class NEMTransactionCommon
      repeated :uint32, :address_n, 1
      optional :uint32, :network, 2
      optional :uint32, :timestamp, 3
      optional :uint64, :fee, 4
      optional :uint32, :deadline, 5
      optional :bytes, :signer, 6
    end

    class NEMTransfer
      optional :string, :recipient, 1
      optional :uint64, :amount, 2
      optional :bytes, :payload, 3
      optional :bytes, :public_key, 4
      repeated ::Trezor::Protobuf::NEMMosaic, :mosaics, 5
    end

    class NEMMosaic
      optional :string, :namespace, 1
      optional :string, :mosaic, 2
      optional :uint64, :quantity, 3
    end

    class NEMProvisionNamespace
      optional :string, :namespace, 1
      optional :string, :parent, 2
      optional :string, :sink, 3
      optional :uint64, :fee, 4
    end

    class NEMMosaicCreation
      optional ::Trezor::Protobuf::NEMMosaicDefinition, :definition, 1
      optional :string, :sink, 2
      optional :uint64, :fee, 3
    end

    class NEMMosaicDefinition
      optional :string, :name, 1
      optional :string, :ticker, 2
      optional :string, :namespace, 3
      optional :string, :mosaic, 4
      optional :uint32, :divisibility, 5
      optional ::Trezor::Protobuf::NEMMosaicLevy, :levy, 6
      optional :uint64, :fee, 7
      optional :string, :levy_address, 8
      optional :string, :levy_namespace, 9
      optional :string, :levy_mosaic, 10
      optional :uint64, :supply, 11
      optional :bool, :mutable_supply, 12
      optional :bool, :transferable, 13
      optional :string, :description, 14
      repeated :uint32, :networks, 15
    end

    class NEMMosaicSupplyChange
      optional :string, :namespace, 1
      optional :string, :mosaic, 2
      optional ::Trezor::Protobuf::NEMSupplyChangeType, :type, 3
      optional :uint64, :delta, 4
    end

    class NEMAggregateModification
      repeated ::Trezor::Protobuf::NEMCosignatoryModification, :modifications, 1
      optional :sint32, :relative_change, 2
    end

    class NEMCosignatoryModification
      optional ::Trezor::Protobuf::NEMModificationType, :type, 1
      optional :bytes, :public_key, 2
    end

    class NEMImportanceTransfer
      optional ::Trezor::Protobuf::NEMImportanceTransferMode, :mode, 1
      optional :bytes, :public_key, 2
    end

    class StellarAssetType
      optional :uint32, :type, 1
      optional :string, :code, 2
      optional :bytes, :issuer, 3
    end

    class LiskTransactionCommon
      optional ::Trezor::Protobuf::LiskTransactionType, :type, 1
      optional :uint64, :amount, 2, :default => 0
      optional :uint64, :fee, 3
      optional :string, :recipient_id, 4
      optional :bytes, :sender_public_key, 5
      optional :bytes, :requester_public_key, 6
      optional :bytes, :signature, 7
      optional :uint32, :timestamp, 8
      optional ::Trezor::Protobuf::LiskTransactionAsset, :asset, 9
    end

    class LiskTransactionAsset
      optional ::Trezor::Protobuf::LiskSignatureType, :signature, 1
      optional ::Trezor::Protobuf::LiskDelegateType, :delegate, 2
      repeated :string, :votes, 3
      optional ::Trezor::Protobuf::LiskMultisignatureType, :multisignature, 4
      optional :string, :data, 5
    end

    class LiskSignatureType
      optional :bytes, :public_key, 1
    end

    class LiskDelegateType
      optional :string, :username, 1
    end

    class LiskMultisignatureType
      optional :uint32, :min, 1
      optional :uint32, :life_time, 2
      repeated :string, :keys_group, 3
    end


    ##
    # Extended Message Fields
    #
    class ::Google::Protobuf::EnumValueOptions < ::Protobuf::Message
      optional :bool, :".trezor.protobuf.wire_in", 50002, :extension => true
      optional :bool, :".trezor.protobuf.wire_out", 50003, :extension => true
      optional :bool, :".trezor.protobuf.wire_debug_in", 50004, :extension => true
      optional :bool, :".trezor.protobuf.wire_debug_out", 50005, :extension => true
      optional :bool, :".trezor.protobuf.wire_tiny", 50006, :extension => true
      optional :bool, :".trezor.protobuf.wire_bootloader", 50007, :extension => true
    end

  end

end

