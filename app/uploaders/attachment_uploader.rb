class AttachmentUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "public/upload"
  end

  def extension_white_list
    %w(pdf doc htm html docx)
  end
end
