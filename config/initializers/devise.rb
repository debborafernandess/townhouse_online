require 'devise/orm/active_record'

Devise.secret_key = '09dcb09c1e6c3b9b3a9ed60150602573f516c2da788db9817ffd07b76f6f1dedea4aa6a5ec4d4d0f22fd847a5039118c109c18e2c2b36f0b869236eef36794e4'
Devise.omniauth :facebook, "203156440481055", "15344761b2c6c35cb93d29d8f1e80048", callback_url: "http://localhost:3000/users/auth/facebook/callback"
