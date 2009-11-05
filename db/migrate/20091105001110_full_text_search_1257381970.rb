class FullTextSearch1257381970 < ActiveRecord::Migration
  def self.up
      ActiveRecord::Base.connection.execute(<<-'eosql')
        DROP index IF EXISTS articles_fts_idx
      eosql
      ActiveRecord::Base.connection.execute(<<-'eosql')
                CREATE index articles_fts_idx
        ON articles
        USING gin((to_tsvector('english', coalesce(articles.title, '') || ' ' || coalesce(articles.content, ''))))

      eosql
  end
end
