require "message_encrypter/railtie"

module MessageEncrypter
  class PayloadEncrypter
    def initialize(key)
      @crypt = ActiveSupport::MessageEncryptor.new(key)
    end

    def self.generate_key(length = 32)
      salt = SecureRandom.random_bytes length
      ActiveSupport::KeyGenerator.new('password').generate_key(salt, length)
    end

    def encode(plain_data)
      @crypt.encrypt_and_sign plain_data
    end

    def decode(encrypted_data)
      @crypt.decrypt_and_verify encrypted_data
    end
  end
end
