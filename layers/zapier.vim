command! -nargs=1 Jira read !echo "https://zapierorg.atlassian.net/browse/"<args>

function! GithubLink()
  let line=line('.')
  let baselink="https://github.com/zapier/zapier/blob/develop/web/"
  let currentfile=expand('%:h').'/'.expand('%:t')
  let github_link = baselink . currentfile . "#L" . line

  call setreg('*', github_link)
endfunction

command! -nargs=0 Glink call GithubLink()
