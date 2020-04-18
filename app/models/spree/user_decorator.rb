module Spree
  module UserDecorator
    def self.prepended(base)
      base.alias_attribute :roles, :spree_roles
    end
  end
  # Spree.user_class.class_eval do
  #   alias_attribute :roles, :spree_roles
  # end
end

::Spree::Spree.user_class.prepend Spree::UserDecorator
