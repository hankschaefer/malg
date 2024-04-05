class PictureUploader < CarrierWave::Uploader::Base
  include ImageKitIo::CarrierWave

  # def options
  #   options = 
  #   {
  #       response_fields: 'isPrivateFile, tags',
  #       tags: ["Rails SDK uploads"],
  #       use_unique_file_name: false,
  #       folder: "your_directory/"
  #   }
  # end

  # # If you want to set upload dir then you can use following method or you can also use options method.
  # # This method shuld return string
  # def store_dir
  #     "your_directory/"
  # end

end