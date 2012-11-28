class Requerim < ActiveRecord::Base
  attr_accessible :asunto, :notif_on, :nrequerim, :resp_on, :venc_on, :solicitud_id
end
