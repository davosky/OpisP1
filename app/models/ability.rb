class Ability
  include CanCan::Ability

  def initialize(user)
    if user.present?
      if user.admin == true
        can :manage, :all
      else
        if user.institute == 'Patronato INCA'
          can :read, IncaReceipt
          can :create, IncaReceipt
          can :update, IncaReceipt do |inca_receipt|
            inca_receipt.user == user
          end
          can :read, IncaSubscription
          can :create, IncaSubscription
          can :update, IncaSubscription do |inca_subscription|
            inca_subscription.user == user
          end
        end
        if user.institute == 'Ufficio Vertenze e Legale'
          can :read, UvlReceipt
          can :create, UvlReceipt
          can :update, UvlReceipt do |uvl_receipt|
            uvl_receipt.user == user
          end
          can :read, UvlSubscription
          can :create, UvlSubscription
          can :update, UvlSubscription do |uvl_subscription|
            uvl_subscription.user == user
          end
        end
      end
    end
  end
end
