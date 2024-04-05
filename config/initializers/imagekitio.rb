ImageKitIo.configure do |config|
    config.public_key = 'public_uk7r3O4nEkExuyq6aPt0WpN0pL8='
    config.private_key = 'private_rYBT6voYteVGe1QpV+mzbWuNBfA='
    config.url_endpoint = 'https://ik.imagekit.io/xh6e9r6ux' # https://ik.imagekit.io/your_imagekit_id
    config.service = :carrierwave
    # config.constants.MISSING_PRIVATE_KEY = 'custom error message'
  end