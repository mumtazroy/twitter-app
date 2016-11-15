class Edit Tweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :mes<h1>New Tweet</h1>

<%= form_for(@tweet) do |f| %>
<% if @tweet.errors.any? %>
    <div id="error_explanation">
      <h2><%= pluralize(@tweet.errors.count, "error") %> prohibited this tweet from being saved:</h2>

      <ul>
        <% @tweet.errors.full_messages.each do |message| %>
        <li><%= message %></li>
      <% end %>
      </ul>
    </div>
  <% end %>

  <div class="field">
    <%= f.label :message %><br>
    <%= f.text_field :message %>
  </div>
  <div class="field">
    <%= f.label :user_id %><br>
    <%= f.text_field :user_id, value: current_user.id %>
  </div>
  <div class="actions">
    <%= f.submit %>
  </div>
<% end %>

<%= link_to 'Back', tweets_path %>sage
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
