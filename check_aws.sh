if [[ -z "${AWS_ACCESS_KEY_ID}" ]]; then
    echo "Missing aws key"
    exit 1
fi

if [[ -z "${AWS_SECRET_ACCESS_KEY}" ]]; then
    echo "Missing aws secret"
    exit 1
fi
