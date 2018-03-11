# A collection of dubbo docs

* [Dubbo user manual(English)](http://dubbo.io/books/dubbo-user-book-en/) or [Dubbo用户手册(中文)](http://dubbo.io/books/dubbo-user-book/) - Describe how to use Dubbo and all features of Dubbo concretely.
* [Dubbo developer guide(English)](http://dubbo.io/books/dubbo-dev-book-en/) or [Dubbo开发手册(中文)](http://dubbo.io/books/dubbo-dev-book/) - Detailly introduce the design principal, extension mechanisms, code conventions, version control and building project, etc.
* [Dubbo admin manual(English)](http://dubbo.io/books/dubbo-admin-book-en/) or [Dubbo管理手册(中文)](http://dubbo.io/books/dubbo-admin-book/) - Describe how to use Dubbo registry and admin-console.

## How to Visit (Publish Address):

* The Chinese version is released under the `dubbo.io` domain, for example, you can visit User Mannual through http://dubbo.io/books/dubbo-user-book/.
* The English version is published to `dubbo.io` as well, in addition, it is also published to `dubbo.gitbooks.io`. This way, you can visit the User Mannul through http://dubbo.io/books/dubbo-user-book-en/ or https://dubbo.gitbooks.io/user-book-en/.

## How to Publish

This repository only stores markdown sources, in order to be visited by users, it should be published everytime when there's an update. It will not be published automatically, so the committers need to publish mannually following rules below:

* Publish to dubbo.io. You can find [the publish script](https://github.com/dubbo/dubbo.github.io/blob/master/script/deploy) stored in repo dubbo/dubbo.github.io, clone this repo and run the script, all resources will be published automatically to dubbo.io.
* Publish to dubbo.gitbooks.io(only for english version). There's no publish script for this approach, what you need to do is merge the master branch to the corresponding branch. Because the gitbooks is watching the branches in this repo:gitbook-admin-en, gitbook-user-en, gitbook-dev-en, every change will be published automitically.


