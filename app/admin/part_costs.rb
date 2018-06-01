# frozen_string_literal: true

ActiveAdmin.register PartCost do
  permit_params :part_id, :resource_id, :cost
end
