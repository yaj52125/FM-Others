Create a MkDocs, reminder tips as follows:

## **Transform to MkDocs**

1. Word, pdf, onenote, text are fine to convert to MkDocs.
2. If you want to convert one note with many pages to one MkDocs, first convert it to PDF, then convert to word.
3. If you want to convert one page of note  to  MkDocs, convert it to  word.
4. Word to MkDocs, you need to install *Writage-1.12.msi*
5. In Typora, import word files, you need to install *pandoc-2.9.2.1-windows-x86_64.msi*

## **Modifier Work**

**Format Editing**

1. set headings and paragraph
2. set orders for paragraph if need
3. align text
4. space in word
5. field may be missing if table column have not enough space for a field
6. check pictures, may be split two parts.
7. long table will split several part, check them.
   - long part of table, add a row for filling header.
   - short part of table, add rows and paste fields.

**Spelling Checking**

1. Any word with a squiggly underline needs to be proofread to see if it needs to be changed.
2. According to the meaning of text, some similar word may be miss-used.

**Links Editing**

Firstly, make sure the address and categories your paper put.

Secondly, edit every links,include internal and external links. 

The way to write links as following:

From the same page, use the id (slug) only as the anchor: [link](#a-header).
From a different page, use the path and anchor: [link](/path/to/page.html#a-header)
From a different domain, use the full URL and anchor: [link](http://example.com/path/to/page.html#a-header)

## Submit

The docs are maintained in gitlab, so we need to clone it upon your local machine. Find a folder where you want to maintain your docs and execute commands underneath.

```
git clone https://git.openearth.community/dspdm/prdm-documents.git
```

### Firstly, open the doc project in *Typora*.

### Secondly, create a *md* doc in where it fit in

For example, I create a *hello-world.md* under *tech* folder. And then you can write your document now.

> Make sure there is **NO** space symbol appeared in your file name.

- You may be interested in learning markdown syntax. here is a [good material](https://guides.github.com/features/mastering-markdown/) for good catch.
- Or you can just leverage the functions in Typora to write a standard markdown doc right away, it also show you the syntax when you format your words in the meantime.

*Try Paragraph, Format menu, and right click in Typora*

### Thirdly, modify *mkdocs.yml* to configure your new file.

```
nav:
  - Home: 'index.md'
  - 'MkDocs Guide': mkdocs-guide.md
  - API:
    - Common API: api/api.md
  - Features:
    - Bulk Import: features/bulk-import.md
  - Tech:
    - MinIO: tech/minio.md
    - Hello World: tech/hello-world.md
```

You may notice I add one line at bottom of *nav* section. please make sure the right indent ahead of your configuration.

```
     - Hello World: tech/hello-world.md
```

### Fourthly, let's publish the doc

- Open *Github desktop* and you will see all the changed files which have been identified.

 ![img](https://prdmdocs.distplat3.landmarksoftware.io/images/githubdesk-2.PNG)

- Write down some comments for your commit and then click *Commit to master*

![img](https://prdmdocs.distplat3.landmarksoftware.io/images/githubdesk-3.PNG)

- Push the changes to *gitlab* via clicking *push origin*

![img](https://prdmdocs.distplat3.landmarksoftware.io/images/githubdesk-4.PNG)

- One or two minute later, the documents will be published on live, refresh the site you will see the new doc.