export const cocktail_form = () => {
  const makeYourOwn = document.getElementById('cocktail-icon');
  const form = document.getElementById('form');

  makeYourOwn.addEventListener('click', (event) => {
    form.insertAdjacentHTML('afterend', `<div class="col-4"><%= simple_form_for(@new_cocktail) do |f| %><%= f.input :name, label: "Enter your cocktail name" %><%= f.input :picture, as: :file, label: "Upload a picture" %><%= f.submit 'Create this cocktail', id: 'create-cocktail' %><% end %>`);
  });
};
