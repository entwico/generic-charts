render-all: render-backend-app render-static-web-app render-external-secrets

render-application:
	helm template charts/application > charts/application/values.out.yaml

render-backend-app:
	helm template charts/backend-app > charts/backend-app/values.out.yaml

render-static-web-app:
	helm template charts/static-web-app > charts/static-web-app/values.out.yaml

render-external-secrets:
	helm template charts/external-secrets > charts/external-secrets/values.out.yaml

clean:
	git clean -fX
	git clean -fd
