export const cocktail_form = () => {
  const MakeYourOwn = document.getElementById('create-cocktail');
  MakeYourOwn.AddEventListener('hover', (event) => {
    document.getElementById('form').insertAdjacentHTML
  });

`<div class="col-4">
  <%= simple_form_for(@new_cocktail) do |f| %>
    <%= f.input :name %>
    <%= f.input :picture, as: :file %>
    <%= f.submit 'Create cocktail' %>
  <% end %>
</div>`
};