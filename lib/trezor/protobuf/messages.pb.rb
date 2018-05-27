# encoding: utf-8

##
# This file is auto-generated. DO NOT EDIT!
#
require 'protobuf'


##
# Imports
#
require_relative 'types.pb'

module Trezor
  module Protobuf
    ::Protobuf::Optionable.inject(self) { ::Google::Protobuf::FileOptions }

    ##
    # Enum Classes
    #
    class MessageType < ::Protobuf::Enum
      define :MessageType_Initialize, 0
      define :MessageType_Ping, 1
      define :MessageType_Success, 2
      define :MessageType_Failure, 3
      define :MessageType_ChangePin, 4
      define :MessageType_WipeDevice, 5
      define :MessageType_FirmwareErase, 6
      define :MessageType_FirmwareUpload, 7
      define :MessageType_FirmwareRequest, 8
      define :MessageType_GetEntropy, 9
      define :MessageType_Entropy, 10
      define :MessageType_GetPublicKey, 11
      define :MessageType_PublicKey, 12
      define :MessageType_LoadDevice, 13
      define :MessageType_ResetDevice, 14
      define :MessageType_SignTx, 15
      define :MessageType_SimpleSignTx, 16
      define :MessageType_Features, 17
      define :MessageType_PinMatrixRequest, 18
      define :MessageType_PinMatrixAck, 19
      define :MessageType_Cancel, 20
      define :MessageType_TxRequest, 21
      define :MessageType_TxAck, 22
      define :MessageType_CipherKeyValue, 23
      define :MessageType_ClearSession, 24
      define :MessageType_ApplySettings, 25
      define :MessageType_ButtonRequest, 26
      define :MessageType_ButtonAck, 27
      define :MessageType_ApplyFlags, 28
      define :MessageType_GetAddress, 29
      define :MessageType_Address, 30
      define :MessageType_SelfTest, 32
      define :MessageType_BackupDevice, 34
      define :MessageType_EntropyRequest, 35
      define :MessageType_EntropyAck, 36
      define :MessageType_SignMessage, 38
      define :MessageType_VerifyMessage, 39
      define :MessageType_MessageSignature, 40
      define :MessageType_PassphraseRequest, 41
      define :MessageType_PassphraseAck, 42
      define :MessageType_PassphraseStateRequest, 77
      define :MessageType_PassphraseStateAck, 78
      define :MessageType_EstimateTxSize, 43
      define :MessageType_TxSize, 44
      define :MessageType_RecoveryDevice, 45
      define :MessageType_WordRequest, 46
      define :MessageType_WordAck, 47
      define :MessageType_CipheredKeyValue, 48
      define :MessageType_EncryptMessage, 49
      define :MessageType_EncryptedMessage, 50
      define :MessageType_DecryptMessage, 51
      define :MessageType_DecryptedMessage, 52
      define :MessageType_SignIdentity, 53
      define :MessageType_SignedIdentity, 54
      define :MessageType_GetFeatures, 55
      define :MessageType_EthereumGetAddress, 56
      define :MessageType_EthereumAddress, 57
      define :MessageType_EthereumSignTx, 58
      define :MessageType_EthereumTxRequest, 59
      define :MessageType_EthereumTxAck, 60
      define :MessageType_GetECDHSessionKey, 61
      define :MessageType_ECDHSessionKey, 62
      define :MessageType_SetU2FCounter, 63
      define :MessageType_EthereumSignMessage, 64
      define :MessageType_EthereumVerifyMessage, 65
      define :MessageType_EthereumMessageSignature, 66
      define :MessageType_NEMGetAddress, 67
      define :MessageType_NEMAddress, 68
      define :MessageType_NEMSignTx, 69
      define :MessageType_NEMSignedTx, 70
      define :MessageType_CosiCommit, 71
      define :MessageType_CosiCommitment, 72
      define :MessageType_CosiSign, 73
      define :MessageType_CosiSignature, 74
      define :MessageType_NEMDecryptMessage, 75
      define :MessageType_NEMDecryptedMessage, 76
      define :MessageType_DebugLinkDecision, 100
      define :MessageType_DebugLinkGetState, 101
      define :MessageType_DebugLinkState, 102
      define :MessageType_DebugLinkStop, 103
      define :MessageType_DebugLinkLog, 104
      define :MessageType_DebugLinkMemoryRead, 110
      define :MessageType_DebugLinkMemory, 111
      define :MessageType_DebugLinkMemoryWrite, 112
      define :MessageType_DebugLinkFlashErase, 113
      define :MessageType_LiskGetAddress, 114
      define :MessageType_LiskAddress, 115
      define :MessageType_LiskSignTx, 116
      define :MessageType_LiskSignedTx, 117
      define :MessageType_LiskGetPublicKey, 121
      define :MessageType_LiskPublicKey, 122
      define :MessageType_StellarGetPublicKey, 200
      define :MessageType_StellarPublicKey, 201
      define :MessageType_StellarSignTx, 202
      define :MessageType_StellarTxOpRequest, 203
      define :MessageType_StellarCreateAccountOp, 210
      define :MessageType_StellarPaymentOp, 211
      define :MessageType_StellarPathPaymentOp, 212
      define :MessageType_StellarManageOfferOp, 213
      define :MessageType_StellarCreatePassiveOfferOp, 214
      define :MessageType_StellarSetOptionsOp, 215
      define :MessageType_StellarChangeTrustOp, 216
      define :MessageType_StellarAllowTrustOp, 217
      define :MessageType_StellarAccountMergeOp, 218
      define :MessageType_StellarManageDataOp, 220
      define :MessageType_StellarBumpSequenceOp, 221
      define :MessageType_StellarSignedTx, 230
    end


    ##
    # Message Classes
    #
    class Initialize < ::Protobuf::Message; end
    class GetFeatures < ::Protobuf::Message; end
    class Features < ::Protobuf::Message; end
    class ClearSession < ::Protobuf::Message; end
    class ApplySettings < ::Protobuf::Message; end
    class ApplyFlags < ::Protobuf::Message; end
    class ChangePin < ::Protobuf::Message; end
    class Ping < ::Protobuf::Message; end
    class Success < ::Protobuf::Message; end
    class Failure < ::Protobuf::Message; end
    class ButtonRequest < ::Protobuf::Message; end
    class ButtonAck < ::Protobuf::Message; end
    class PinMatrixRequest < ::Protobuf::Message; end
    class PinMatrixAck < ::Protobuf::Message; end
    class Cancel < ::Protobuf::Message; end
    class PassphraseRequest < ::Protobuf::Message; end
    class PassphraseAck < ::Protobuf::Message; end
    class PassphraseStateRequest < ::Protobuf::Message; end
    class PassphraseStateAck < ::Protobuf::Message; end
    class GetEntropy < ::Protobuf::Message; end
    class Entropy < ::Protobuf::Message; end
    class GetPublicKey < ::Protobuf::Message; end
    class PublicKey < ::Protobuf::Message; end
    class GetAddress < ::Protobuf::Message; end
    class EthereumGetAddress < ::Protobuf::Message; end
    class Address < ::Protobuf::Message; end
    class EthereumAddress < ::Protobuf::Message; end
    class WipeDevice < ::Protobuf::Message; end
    class LoadDevice < ::Protobuf::Message; end
    class ResetDevice < ::Protobuf::Message; end
    class BackupDevice < ::Protobuf::Message; end
    class EntropyRequest < ::Protobuf::Message; end
    class EntropyAck < ::Protobuf::Message; end
    class RecoveryDevice < ::Protobuf::Message; end
    class WordRequest < ::Protobuf::Message; end
    class WordAck < ::Protobuf::Message; end
    class SignMessage < ::Protobuf::Message; end
    class VerifyMessage < ::Protobuf::Message; end
    class MessageSignature < ::Protobuf::Message; end
    class EncryptMessage < ::Protobuf::Message; end
    class EncryptedMessage < ::Protobuf::Message; end
    class DecryptMessage < ::Protobuf::Message; end
    class DecryptedMessage < ::Protobuf::Message; end
    class CipherKeyValue < ::Protobuf::Message; end
    class CipheredKeyValue < ::Protobuf::Message; end
    class EstimateTxSize < ::Protobuf::Message; end
    class TxSize < ::Protobuf::Message; end
    class SignTx < ::Protobuf::Message; end
    class SimpleSignTx < ::Protobuf::Message; end
    class TxRequest < ::Protobuf::Message; end
    class TxAck < ::Protobuf::Message; end
    class EthereumSignTx < ::Protobuf::Message; end
    class EthereumTxRequest < ::Protobuf::Message; end
    class EthereumTxAck < ::Protobuf::Message; end
    class EthereumSignMessage < ::Protobuf::Message; end
    class EthereumVerifyMessage < ::Protobuf::Message; end
    class EthereumMessageSignature < ::Protobuf::Message; end
    class SignIdentity < ::Protobuf::Message; end
    class SignedIdentity < ::Protobuf::Message; end
    class GetECDHSessionKey < ::Protobuf::Message; end
    class ECDHSessionKey < ::Protobuf::Message; end
    class SetU2FCounter < ::Protobuf::Message; end
    class FirmwareErase < ::Protobuf::Message; end
    class FirmwareRequest < ::Protobuf::Message; end
    class FirmwareUpload < ::Protobuf::Message; end
    class SelfTest < ::Protobuf::Message; end
    class NEMGetAddress < ::Protobuf::Message; end
    class NEMAddress < ::Protobuf::Message; end
    class NEMSignTx < ::Protobuf::Message; end
    class NEMSignedTx < ::Protobuf::Message; end
    class NEMDecryptMessage < ::Protobuf::Message; end
    class NEMDecryptedMessage < ::Protobuf::Message; end
    class CosiCommit < ::Protobuf::Message; end
    class CosiCommitment < ::Protobuf::Message; end
    class CosiSign < ::Protobuf::Message; end
    class CosiSignature < ::Protobuf::Message; end
    class StellarGetPublicKey < ::Protobuf::Message; end
    class StellarPublicKey < ::Protobuf::Message; end
    class StellarSignTx < ::Protobuf::Message; end
    class StellarTxOpRequest < ::Protobuf::Message; end
    class StellarPaymentOp < ::Protobuf::Message; end
    class StellarCreateAccountOp < ::Protobuf::Message; end
    class StellarPathPaymentOp < ::Protobuf::Message; end
    class StellarManageOfferOp < ::Protobuf::Message; end
    class StellarCreatePassiveOfferOp < ::Protobuf::Message; end
    class StellarSetOptionsOp < ::Protobuf::Message; end
    class StellarChangeTrustOp < ::Protobuf::Message; end
    class StellarAllowTrustOp < ::Protobuf::Message; end
    class StellarAccountMergeOp < ::Protobuf::Message; end
    class StellarManageDataOp < ::Protobuf::Message; end
    class StellarBumpSequenceOp < ::Protobuf::Message; end
    class StellarSignedTx < ::Protobuf::Message; end
    class LiskGetPublicKey < ::Protobuf::Message; end
    class LiskPublicKey < ::Protobuf::Message; end
    class LiskGetAddress < ::Protobuf::Message; end
    class LiskAddress < ::Protobuf::Message; end
    class LiskSignTx < ::Protobuf::Message; end
    class LiskSignedTx < ::Protobuf::Message; end
    class DebugLinkDecision < ::Protobuf::Message; end
    class DebugLinkGetState < ::Protobuf::Message; end
    class DebugLinkState < ::Protobuf::Message; end
    class DebugLinkStop < ::Protobuf::Message; end
    class DebugLinkLog < ::Protobuf::Message; end
    class DebugLinkMemoryRead < ::Protobuf::Message; end
    class DebugLinkMemory < ::Protobuf::Message; end
    class DebugLinkMemoryWrite < ::Protobuf::Message; end
    class DebugLinkFlashErase < ::Protobuf::Message; end


    ##
    # File Options
    #
    set_option :java_package, "com.satoshilabs.trezor.lib.protobuf"
    set_option :java_outer_classname, "TrezorMessage"


    ##
    # Message Fields
    #
    class Initialize
      optional :bytes, :state, 1
      optional :bool, :skip_passphrase, 2
    end

    class Features
      optional :string, :vendor, 1
      optional :uint32, :major_version, 2
      optional :uint32, :minor_version, 3
      optional :uint32, :patch_version, 4
      optional :bool, :bootloader_mode, 5
      optional :string, :device_id, 6
      optional :bool, :pin_protection, 7
      optional :bool, :passphrase_protection, 8
      optional :string, :language, 9
      optional :string, :label, 10
      optional :bool, :initialized, 12
      optional :bytes, :revision, 13
      optional :bytes, :bootloader_hash, 14
      optional :bool, :imported, 15
      optional :bool, :pin_cached, 16
      optional :bool, :passphrase_cached, 17
      optional :bool, :firmware_present, 18
      optional :bool, :needs_backup, 19
      optional :uint32, :flags, 20
      optional :string, :model, 21
      optional :uint32, :fw_major, 22
      optional :uint32, :fw_minor, 23
      optional :uint32, :fw_patch, 24
      optional :string, :fw_vendor, 25
      optional :bytes, :fw_vendor_keys, 26
      optional :bool, :unfinished_backup, 27
    end

    class ApplySettings
      optional :string, :language, 1
      optional :string, :label, 2
      optional :bool, :use_passphrase, 3
      optional :bytes, :homescreen, 4
      optional ::Trezor::Protobuf::PassphraseSourceType, :passphrase_source, 5
      optional :uint32, :auto_lock_delay_ms, 6
    end

    class ApplyFlags
      optional :uint32, :flags, 1
    end

    class ChangePin
      optional :bool, :remove, 1
    end

    class Ping
      optional :string, :message, 1
      optional :bool, :button_protection, 2
      optional :bool, :pin_protection, 3
      optional :bool, :passphrase_protection, 4
    end

    class Success
      optional :string, :message, 1
    end

    class Failure
      optional ::Trezor::Protobuf::FailureType, :code, 1
      optional :string, :message, 2
    end

    class ButtonRequest
      optional ::Trezor::Protobuf::ButtonRequestType, :code, 1
      optional :string, :data, 2
    end

    class PinMatrixRequest
      optional ::Trezor::Protobuf::PinMatrixRequestType, :type, 1
    end

    class PinMatrixAck
      required :string, :pin, 1
    end

    class PassphraseRequest
      optional :bool, :on_device, 1
    end

    class PassphraseAck
      optional :string, :passphrase, 1
      optional :bytes, :state, 2
    end

    class PassphraseStateRequest
      optional :bytes, :state, 1
    end

    class GetEntropy
      required :uint32, :size, 1
    end

    class Entropy
      required :bytes, :entropy, 1
    end

    class GetPublicKey
      repeated :uint32, :address_n, 1
      optional :string, :ecdsa_curve_name, 2
      optional :bool, :show_display, 3
      optional :string, :coin_name, 4, :default => "Bitcoin"
    end

    class PublicKey
      required ::Trezor::Protobuf::HDNodeType, :node, 1
      optional :string, :xpub, 2
    end

    class GetAddress
      repeated :uint32, :address_n, 1
      optional :string, :coin_name, 2, :default => "Bitcoin"
      optional :bool, :show_display, 3
      optional ::Trezor::Protobuf::MultisigRedeemScriptType, :multisig, 4
      optional ::Trezor::Protobuf::InputScriptType, :script_type, 5, :default => ::Trezor::Protobuf::InputScriptType::SPENDADDRESS
    end

    class EthereumGetAddress
      repeated :uint32, :address_n, 1
      optional :bool, :show_display, 2
    end

    class Address
      required :string, :address, 1
    end

    class EthereumAddress
      required :bytes, :address, 1
    end

    class LoadDevice
      optional :string, :mnemonic, 1
      optional ::Trezor::Protobuf::HDNodeType, :node, 2
      optional :string, :pin, 3
      optional :bool, :passphrase_protection, 4
      optional :string, :language, 5, :default => "english"
      optional :string, :label, 6
      optional :bool, :skip_checksum, 7
      optional :uint32, :u2f_counter, 8
    end

    class ResetDevice
      optional :bool, :display_random, 1
      optional :uint32, :strength, 2, :default => 256
      optional :bool, :passphrase_protection, 3
      optional :bool, :pin_protection, 4
      optional :string, :language, 5, :default => "english"
      optional :string, :label, 6
      optional :uint32, :u2f_counter, 7
      optional :bool, :skip_backup, 8
    end

    class EntropyAck
      optional :bytes, :entropy, 1
    end

    class RecoveryDevice
      optional :uint32, :word_count, 1
      optional :bool, :passphrase_protection, 2
      optional :bool, :pin_protection, 3
      optional :string, :language, 4, :default => "english"
      optional :string, :label, 5
      optional :bool, :enforce_wordlist, 6
      optional :uint32, :type, 8
      optional :uint32, :u2f_counter, 9
      optional :bool, :dry_run, 10
    end

    class WordRequest
      optional ::Trezor::Protobuf::WordRequestType, :type, 1
    end

    class WordAck
      required :string, :word, 1
    end

    class SignMessage
      repeated :uint32, :address_n, 1
      required :bytes, :message, 2
      optional :string, :coin_name, 3, :default => "Bitcoin"
      optional ::Trezor::Protobuf::InputScriptType, :script_type, 4, :default => ::Trezor::Protobuf::InputScriptType::SPENDADDRESS
    end

    class VerifyMessage
      optional :string, :address, 1
      optional :bytes, :signature, 2
      optional :bytes, :message, 3
      optional :string, :coin_name, 4, :default => "Bitcoin"
    end

    class MessageSignature
      optional :string, :address, 1
      optional :bytes, :signature, 2
    end

    class EncryptMessage
      optional :bytes, :pubkey, 1
      optional :bytes, :message, 2
      optional :bool, :display_only, 3
      repeated :uint32, :address_n, 4
      optional :string, :coin_name, 5, :default => "Bitcoin"
    end

    class EncryptedMessage
      optional :bytes, :nonce, 1
      optional :bytes, :message, 2
      optional :bytes, :hmac, 3
    end

    class DecryptMessage
      repeated :uint32, :address_n, 1
      optional :bytes, :nonce, 2
      optional :bytes, :message, 3
      optional :bytes, :hmac, 4
    end

    class DecryptedMessage
      optional :bytes, :message, 1
      optional :string, :address, 2
    end

    class CipherKeyValue
      repeated :uint32, :address_n, 1
      optional :string, :key, 2
      optional :bytes, :value, 3
      optional :bool, :encrypt, 4
      optional :bool, :ask_on_encrypt, 5
      optional :bool, :ask_on_decrypt, 6
      optional :bytes, :iv, 7
    end

    class CipheredKeyValue
      optional :bytes, :value, 1
    end

    class EstimateTxSize
      required :uint32, :outputs_count, 1
      required :uint32, :inputs_count, 2
      optional :string, :coin_name, 3, :default => "Bitcoin"
    end

    class TxSize
      optional :uint32, :tx_size, 1
    end

    class SignTx
      required :uint32, :outputs_count, 1
      required :uint32, :inputs_count, 2
      optional :string, :coin_name, 3, :default => "Bitcoin"
      optional :uint32, :version, 4, :default => 1
      optional :uint32, :lock_time, 5, :default => 0
      optional :uint32, :decred_expiry, 6
    end

    class SimpleSignTx
      repeated ::Trezor::Protobuf::TxInputType, :inputs, 1
      repeated ::Trezor::Protobuf::TxOutputType, :outputs, 2
      repeated ::Trezor::Protobuf::TransactionType, :transactions, 3
      optional :string, :coin_name, 4, :default => "Bitcoin"
      optional :uint32, :version, 5, :default => 1
      optional :uint32, :lock_time, 6, :default => 0
    end

    class TxRequest
      optional ::Trezor::Protobuf::RequestType, :request_type, 1
      optional ::Trezor::Protobuf::TxRequestDetailsType, :details, 2
      optional ::Trezor::Protobuf::TxRequestSerializedType, :serialized, 3
    end

    class TxAck
      optional ::Trezor::Protobuf::TransactionType, :tx, 1
    end

    class EthereumSignTx
      repeated :uint32, :address_n, 1
      optional :bytes, :nonce, 2
      optional :bytes, :gas_price, 3
      optional :bytes, :gas_limit, 4
      optional :bytes, :to, 5
      optional :bytes, :value, 6
      optional :bytes, :data_initial_chunk, 7
      optional :uint32, :data_length, 8
      optional :uint32, :chain_id, 9
      optional :uint32, :tx_type, 10
    end

    class EthereumTxRequest
      optional :uint32, :data_length, 1
      optional :uint32, :signature_v, 2
      optional :bytes, :signature_r, 3
      optional :bytes, :signature_s, 4
    end

    class EthereumTxAck
      optional :bytes, :data_chunk, 1
    end

    class EthereumSignMessage
      repeated :uint32, :address_n, 1
      required :bytes, :message, 2
    end

    class EthereumVerifyMessage
      optional :bytes, :address, 1
      optional :bytes, :signature, 2
      optional :bytes, :message, 3
    end

    class EthereumMessageSignature
      optional :bytes, :address, 1
      optional :bytes, :signature, 2
    end

    class SignIdentity
      optional ::Trezor::Protobuf::IdentityType, :identity, 1
      optional :bytes, :challenge_hidden, 2
      optional :string, :challenge_visual, 3
      optional :string, :ecdsa_curve_name, 4
    end

    class SignedIdentity
      optional :string, :address, 1
      optional :bytes, :public_key, 2
      optional :bytes, :signature, 3
    end

    class GetECDHSessionKey
      optional ::Trezor::Protobuf::IdentityType, :identity, 1
      optional :bytes, :peer_public_key, 2
      optional :string, :ecdsa_curve_name, 3
    end

    class ECDHSessionKey
      optional :bytes, :session_key, 1
    end

    class SetU2FCounter
      optional :uint32, :u2f_counter, 1
    end

    class FirmwareErase
      optional :uint32, :length, 1
    end

    class FirmwareRequest
      optional :uint32, :offset, 1
      optional :uint32, :length, 2
    end

    class FirmwareUpload
      required :bytes, :payload, 1
      optional :bytes, :hash, 2
    end

    class SelfTest
      optional :bytes, :payload, 1
    end

    class NEMGetAddress
      repeated :uint32, :address_n, 1
      optional :uint32, :network, 2
      optional :bool, :show_display, 3
    end

    class NEMAddress
      required :string, :address, 1
    end

    class NEMSignTx
      optional ::Trezor::Protobuf::NEMTransactionCommon, :transaction, 1
      optional ::Trezor::Protobuf::NEMTransactionCommon, :multisig, 2
      optional ::Trezor::Protobuf::NEMTransfer, :transfer, 3
      optional :bool, :cosigning, 4
      optional ::Trezor::Protobuf::NEMProvisionNamespace, :provision_namespace, 5
      optional ::Trezor::Protobuf::NEMMosaicCreation, :mosaic_creation, 6
      optional ::Trezor::Protobuf::NEMMosaicSupplyChange, :supply_change, 7
      optional ::Trezor::Protobuf::NEMAggregateModification, :aggregate_modification, 8
      optional ::Trezor::Protobuf::NEMImportanceTransfer, :importance_transfer, 9
    end

    class NEMSignedTx
      optional :bytes, :data, 1
      optional :bytes, :signature, 2
    end

    class NEMDecryptMessage
      repeated :uint32, :address_n, 1
      optional :uint32, :network, 2
      optional :bytes, :public_key, 3
      optional :bytes, :payload, 4
    end

    class NEMDecryptedMessage
      optional :bytes, :payload, 1
    end

    class CosiCommit
      repeated :uint32, :address_n, 1
      optional :bytes, :data, 2
    end

    class CosiCommitment
      optional :bytes, :commitment, 1
      optional :bytes, :pubkey, 2
    end

    class CosiSign
      repeated :uint32, :address_n, 1
      optional :bytes, :data, 2
      optional :bytes, :global_commitment, 3
      optional :bytes, :global_pubkey, 4
    end

    class CosiSignature
      optional :bytes, :signature, 1
    end

    class StellarGetPublicKey
      repeated :uint32, :address_n, 1
    end

    class StellarPublicKey
      optional :bytes, :public_key, 1
    end

    class StellarSignTx
      optional :uint32, :protocol_version, 1
      repeated :uint32, :address_n, 2
      optional :string, :network_passphrase, 3
      optional :bytes, :source_account, 4
      optional :uint32, :fee, 5
      optional :uint64, :sequence_number, 6
      optional :uint32, :timebounds_start, 8
      optional :uint32, :timebounds_end, 9
      optional :uint32, :memo_type, 10
      optional :string, :memo_text, 11
      optional :uint64, :memo_id, 12
      optional :bytes, :memo_hash, 13
      optional :uint32, :num_operations, 14
    end

    class StellarPaymentOp
      optional :bytes, :source_account, 1
      optional :bytes, :destination_account, 2
      optional ::Trezor::Protobuf::StellarAssetType, :asset, 3
      optional :sint64, :amount, 4
    end

    class StellarCreateAccountOp
      optional :bytes, :source_account, 1
      optional :bytes, :new_account, 2
      optional :sint64, :starting_balance, 3
    end

    class StellarPathPaymentOp
      optional :bytes, :source_account, 1
      optional ::Trezor::Protobuf::StellarAssetType, :send_asset, 2
      optional :sint64, :send_max, 3
      optional :bytes, :destination_account, 4
      optional ::Trezor::Protobuf::StellarAssetType, :destination_asset, 5
      optional :sint64, :destination_amount, 6
      repeated ::Trezor::Protobuf::StellarAssetType, :paths, 7
    end

    class StellarManageOfferOp
      optional :bytes, :source_account, 1
      optional ::Trezor::Protobuf::StellarAssetType, :selling_asset, 2
      optional ::Trezor::Protobuf::StellarAssetType, :buying_asset, 3
      optional :sint64, :amount, 4
      optional :uint32, :price_n, 5
      optional :uint32, :price_d, 6
      optional :uint64, :offer_id, 7
    end

    class StellarCreatePassiveOfferOp
      optional :bytes, :source_account, 1
      optional ::Trezor::Protobuf::StellarAssetType, :selling_asset, 2
      optional ::Trezor::Protobuf::StellarAssetType, :buying_asset, 3
      optional :sint64, :amount, 4
      optional :uint32, :price_n, 5
      optional :uint32, :price_d, 6
    end

    class StellarSetOptionsOp
      optional :bytes, :source_account, 1
      optional :bytes, :inflation_destination_account, 2
      optional :uint32, :clear_flags, 3
      optional :uint32, :set_flags, 4
      optional :uint32, :master_weight, 5
      optional :uint32, :low_threshold, 6
      optional :uint32, :medium_threshold, 7
      optional :uint32, :high_threshold, 8
      optional :string, :home_domain, 9
      optional :uint32, :signer_type, 10
      optional :bytes, :signer_key, 11
      optional :uint32, :signer_weight, 12
    end

    class StellarChangeTrustOp
      optional :bytes, :source_account, 1
      optional ::Trezor::Protobuf::StellarAssetType, :asset, 2
      optional :uint64, :limit, 3
    end

    class StellarAllowTrustOp
      optional :bytes, :source_account, 1
      optional :bytes, :trusted_account, 2
      optional :uint32, :asset_type, 3
      optional :string, :asset_code, 4
      optional :uint32, :is_authorized, 5
    end

    class StellarAccountMergeOp
      optional :bytes, :source_account, 1
      optional :bytes, :destination_account, 2
    end

    class StellarManageDataOp
      optional :bytes, :source_account, 1
      optional :string, :key, 2
      optional :bytes, :value, 3
    end

    class StellarBumpSequenceOp
      optional :bytes, :source_account, 1
      optional :uint64, :bump_to, 2
    end

    class StellarSignedTx
      optional :bytes, :public_key, 1
      optional :bytes, :signature, 2
    end

    class LiskGetPublicKey
      repeated :uint32, :address_n, 1
      optional :bool, :show_display, 2
    end

    class LiskPublicKey
      optional :bytes, :public_key, 1
    end

    class LiskGetAddress
      repeated :uint32, :address_n, 1
      optional :bool, :show_display, 2
    end

    class LiskAddress
      optional :string, :address, 1
    end

    class LiskSignTx
      repeated :uint32, :address_n, 1
      optional ::Trezor::Protobuf::LiskTransactionCommon, :transaction, 2
    end

    class LiskSignedTx
      optional :bytes, :signature, 1
    end

    class DebugLinkDecision
      optional :bool, :yes_no, 1
      optional :bool, :up_down, 2
      optional :string, :input, 3
    end

    class DebugLinkState
      optional :bytes, :layout, 1
      optional :string, :pin, 2
      optional :string, :matrix, 3
      optional :string, :mnemonic, 4
      optional ::Trezor::Protobuf::HDNodeType, :node, 5
      optional :bool, :passphrase_protection, 6
      optional :string, :reset_word, 7
      optional :bytes, :reset_entropy, 8
      optional :string, :recovery_fake_word, 9
      optional :uint32, :recovery_word_pos, 10
      optional :uint32, :reset_word_pos, 11
    end

    class DebugLinkLog
      optional :uint32, :level, 1
      optional :string, :bucket, 2
      optional :string, :text, 3
    end

    class DebugLinkMemoryRead
      optional :uint32, :address, 1
      optional :uint32, :length, 2
    end

    class DebugLinkMemory
      optional :bytes, :memory, 1
    end

    class DebugLinkMemoryWrite
      optional :uint32, :address, 1
      optional :bytes, :memory, 2
      optional :bool, :flash, 3
    end

    class DebugLinkFlashErase
      optional :uint32, :sector, 1
    end

  end

end

