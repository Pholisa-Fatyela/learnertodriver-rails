class ServiceWorkerController < ApplicationController
  protect_from_forgery except: :service_worker
  layout "pwa"

  def service_worker
  end

  def manifest
  end

  def offline
  end
end