
@Persistencejs = angular.module('Persistencejs', [])

@Persistencejs.service 'Persistence', ->

  persistence.store.websql.config persistence, 'MarcaPagina', 'Offline App DB', 5*1024*1024

  Post = persistence.define 'Post',
    id:               'INT'
    status:           'TEXT'
    url:              'TEXT'
    title_plain:      'TEXT'
    content:          'TEXT'
    date:             'DATE'
    modified:         'DATE' # for cache invalidation
    author:           'JSON'
    categories:       'JSON'
    tags:             'JSON'
    thumbnail_images: 'JSON'

  persistence.schemaSync()

  angular.extend { model: { Post } }, persistence
