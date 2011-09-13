# encoding: utf-8

class Ticket
  include Mongoid::Document
  include Mongoid::Timestamps

  STATUS = ['Aberto', 'Trabalhando', 'Precisa de Mais Informação', 'Fechado']

  embeds_many :comments

  belongs_to :user

  field :name
  field :description
  field :status, :default => "Aberto"

  validates :name, :description, :presence => true
  
end
