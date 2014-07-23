instance creation
fromBase64: aString

	^ self fromForm: (Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: aString readStream))