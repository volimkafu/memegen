if Rails.env.production?
	ENV['S3_BUCKET_NAME'] = 'memeosa-generated'
	ENV['S3_BUCKET_URL'] = 'https://memeosa-generated.s3.amazonaws.com/'
else
	ENV['S3_BUCKET_NAME'] = 'generated-memes'
	ENV['S3_BUCKET_URL'] = 'https://generated-memes.s3.amazonaws.com/'
end

ENV['S3_TEMPLATE_URL'] = 'https://memeosa-templates.s3.amazonaws.com/'

AWS.config({
		:access_key_id => ENV['ACCESS_KEY_ID'],
		:secret_access_key => ENV['SECRET_ACCESS_KEY'],
})
