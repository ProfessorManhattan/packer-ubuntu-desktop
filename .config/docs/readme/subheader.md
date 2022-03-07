<div align="center">
  <h4 align="center">
    <a href="{{ website.homepage }}" title="Megabyte Labs homepage" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/home-solid.svg" />
    </a>
    <a href="{{ repository.group.packer }}/{{ slug }}/-/blob/master/CONTRIBUTING.md" title="Learn about contributing" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/contributing-solid.svg" />
    </a>
    <a href="{{ chat_url }}" title="Slack chat room" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/chat-solid.svg" />
    </a>
    <a href="{{ profile.github }}/packer-{{ slug }}" title="GitHub mirror" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/github-solid.svg" />
    </a>
    <a href="{{ repository.group.packer }}/{{ slug }}" title="GitLab repository" target="_blank">
      <img src="https://gitlab.com/megabyte-labs/assets/-/raw/master/svg/gitlab-solid.svg" />
    </a>
  </h4>
  <p align="center">
    <a href="{{ repository.group.npm }}/{{ slug }}" target="_blank">
      <img alt="Version: {{ pkg.version }}" src="https://img.shields.io/badge/version-{{ pkg.version }}-blue.svg?cacheSeconds=2592000" />
    </a>
    <a href="{{ repository.group.packer }}/{{ slug }}/commits/master" target="_blank">
      <img alt="Pipeline status" src="{{ repository.group.packer }}/{{ slug }}/badges/master/pipeline.svg">
    </a>
    <a href="{{ repository.group.packer }}/{{ slug }}" target="_blank">
      <img alt="Last commit date" src="https://img.shields.io/github/last-commit/{{ profile.github_user }}/packer-{{ slug }}?logo=git&logoColor=white&style={{ badge_style }}" />
    </a>
    <a href="{{ website.documentation }}/packer" target="_blank">
      <img alt="Documentation" src="https://img.shields.io/badge/documentation-yes-brightgreen.svg?style={{ badge_style }}" />
    </a>
    <a href="{{ repository.group.packer }}/{{ slug }}/-/raw/master/LICENSE" target="_blank">
      <img alt="License: {{ pkg.license }}" src="https://img.shields.io/badge/license-{{ pkg.license }}-yellow.svg?style={{ badge_style }}" />
    </a>
  </p>
</div>
