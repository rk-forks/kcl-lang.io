run:
	npm run start

update-deps:
	npm install

run-i18n:
	npm run build && npx http-server ./build

check-link:
	go run ./hack/linkcheck.go

version:
	npm run docusaurus docs:version 0.4.6
