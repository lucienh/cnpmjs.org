# cnpmjs.org: Private npm registry and web for Company

So `cnpm` is meaning: **Company npm**.

## Registry

- Our public registry: [r.cnpmjs.org](//r.cnpmjs.org), syncing from [registry.npmjs.org](//registry.npmjs.org)
- [cnpmjs.org](/) version: <span id="app-version"></span>
- [Node.js](https://nodejs.org) version: <span id="node-version"></span>
- For developers behind the GFW, please visit [the Chinese mirror](https://npm.taobao.org). 中国用户请访问[国内镜像站点](https://npm.taobao.org/)。

<div class="ant-table">
<table class="downloads">
  <tbody>
    <tr>
      <td class="count" id="total-packages"></td><td>total packages</td>
      <td class="count" id="total-versions"></td><td>total package versions</td>
      <td class="count" id="total-deletes"></td><td>total delete packages</td>
    </tr>
    <tr>
      <td class="count"></td><td> downloads today</td>
      <td class="count"></td><td> downloads in this week</td>
      <td class="count"></td><td> downloads in this month</td>
    </tr>
    <tr>
      <td class="count"></td><td> downloads in the last day</td>
      <td class="count"></td><td> downloads in the last week</td>
      <td class="count"></td><td> downloads in the last month</td>
    </tr>
  </tbody>
</table>
</div>

<div class="sync" style="display:none;">
  <h3>Sync Status</h3>
  <p id="sync-model"></p>
  <p>Last sync time is <span id="last-sync-time"></span>. </p>
  <div class="ant-alert ant-alert-info syncing">
    <span class="anticon ant-alert-icon anticon-info-circle"></span>
    <span class="ant-alert-description">The sync worker is working in the backend now. </span>
  </div>
  <div class="ant-table">
  <table class="sync-status">
    <tbody>
      <tr>
        <td><span id="need-sync"></span> packages need to be sync</td>
        <td class="syncing"><span id="left-sync"></span> packages and dependencies waiting for sync</td>
        <td><span id="percent-sync"></span>% progress</td>
      </tr>
      <tr>
        <td><span id="success-sync"></span> packages and dependencies sync successed</td>
        <td><span id="fail-sync"></span> packages and dependencies sync failed</td>
        <td>last success: <span id="last-success-name"></span></td>
      </tr>
    </tbody>
  </table>
  </div>
</div>

<script src="/js/readme.js"></script>

## Badges

Default style is `flat-square`.

### Version

Badge URL: `http://cnpmjs.org/badge/v/cnpmjs.org.svg` ![cnpmjs.org-version-badge](//cnpmjs.org/badge/v/cnpmjs.org.svg)

* `<0.1.0 & >=0.0.0`: ![red-badge](https://dn-img-shields-io.qbox.me/badge/cnpm-0.0.1-red.svg?style=flat-square)
* `<1.0.0 & >=0.1.0`: ![red-badge](https://dn-img-shields-io.qbox.me/badge/cnpm-0.1.0-green.svg?style=flat-square)
* `>=1.0.0`: ![red-badge](https://dn-img-shields-io.qbox.me/badge/cnpm-1.0.0-blue.svg?style=flat-square)

### Downloads

Badge URL: `http://cnpmjs.org/badge/d/cnpmjs.org.svg` ![cnpmjs.org-download-badge](//cnpmjs.org/badge/d/cnpmjs.org.svg)

## Usage

use our npm client [cnpm](https://github.com/cnpm/cnpm)(More suitable with cnpmjs.org and gzip support), you can get our client through npm:

```bash
$ npm install -g cnpm --registry=http://registry.npm.taobao.org
```

Or you can alias NPM to use it:

```bash
alias cnpm="npm --registry=http://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=http://registry.npm.taobao.org/mirrors/node \
--userconfig=$HOME/.cnpmrc"

#Or alias it in .bashrc or .zshrc
$ echo '\n#alias for cnpm\nalias cnpm="npm --registry=http://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=http://registry.npm.taobao.org/mirrors/node \
  --userconfig=$HOME/.cnpmrc"' >> ~/.zshrc && source ~/.zshrc
```

### install

Install package from [r.cnpmjs.org](//r.cnpmjs.org). When installing a package or version does not exist, it will try to install from the official registry([registry.npmjs.org](//registry.npmjs.org)), and sync this package to cnpm in the backend.

```bash
$ cnpm install [name]
```

### sync

Only `cnpm` cli has this command. Meaning sync package from source npm.

```bash
$ cnpm sync connect
```

sync package on web: [sync/connect](/sync/connect)

```bash
$ open http://registry.npm.taobao.org/sync/connect
```

### publish / unpublish

Only `admin` user can publish / unpublish package to private registry.

```bash
$ cnpm publish [name]
$ cnpm unpublish [name]
```

### Other commands

Support all the other npm commands. e.g.:

```bash
$ cnpm info cnpm
```

## TODO list

@see Github [Issues](https://github.com/cnpm/cnpmjs.org/issues)

## Histories

Release [History](/history).

## npm and cnpm relation

![npm&cnpm](https://dn-cnpm.qbox.me/cnpm-npm-relation.png)

## Sponsors

- [![UCloud云计算](https://www.ucloud.cn/static/style/images/about/logo.png)](http://www.ucloud.cn?sem=sdk-CNPMJS)
