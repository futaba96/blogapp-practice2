class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.

  # 開発中はモバイル表示や古いブラウザも通すため、制限なしに変更
  # 本番では古いブラウザを弾いて、最新機能が使えるユーザーのみ許可する
  unless Rails.env.development?
  allow_browser versions: :modern
  end
end
