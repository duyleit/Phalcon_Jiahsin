  {#<div class="page-header">#}
   {#<h3>#}
   {#{{ posts.title }}#}
 {#</h3>#}
      {#{{ posts.content }}#}
 {#</div>#}
  {#{{ posts.title }}#}
{#{{ posts.content  }}#}

      {% for post in posts  %}
          {{ post.id }}
          {{ post.title }}
      {% endfor %}




    {#<table class="table table-bordered table-hover">#}

     {#<thead>#}
       {#<tr>#}
       {#</tr>#}
     {#</thead>#}

      {#<tbody>#}
      {#{% if page.items is defined %}#}
          {#{% for post in posts.items %}#}
            {#<tr>#}
              {#<td>{{ post.id }}</td>#}
              {#<td>{{ post.title }}</td>#}
              {#<td>{{ post.content }}</td>#}
                {#<td>{{ substr(post.content, 0, 20) }}</td>#}
              {#<td>{{ post.categoriesid }}</td>#}
              {#<td>{{ post.slug }}</td>#}
              {#<td>{{ post.tags }}</td>#}
                {#<td>{{ date('M d/Y H:i',post.created) }}</td>#}
              {#<td>{{ date('Y-m-d', post.created) }}</td>#}
              {#<td>{{ post.userid }}</td>#}

              {#<td>{{ link_to("posts/edit/"~post.id, '<i class="fa fa-edit" aria-hidden="true"></i> Edit', 'class':'btn btn-xs btn-default') }}</td>#}
              {#<td>{{ link_to("onclick":"return confirm('Are you sure to DELETE?')","posts/delete/"~post.id, '<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', 'class':'btn btn-xs btn-danger', 'onClick': 'return confirm("Are you sure to DELETE?");') }}</td>#}
            {#</tr>#}
          {#{% endfor %}#}
      {#{% endif %}#}
      {#</tbody>#}

    {#</table>#}
