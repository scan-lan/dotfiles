function auth-codeartifact
    set -gx CODEARTIFACT_AUTHORIZATION_TOKEN "$(aws codeartifact get-authorization-token --domain plg-tech --domain-owner 905418218692 --region eu-central-1 --query authorizationToken --output text)"
    set -gx POETRY_HTTP_BASIC_PLG_USERNAME aws
    set -gx POETRY_HTTP_BASIC_PLG_PASSWORD "$CODEARTIFACT_AUTHORIZATION_TOKEN"
end
