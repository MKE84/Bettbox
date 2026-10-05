const _useDevIdentity = bool.fromEnvironment('APP_DEV');

class AppIdentity {
  static const isDev = _useDevIdentity;

  static const productName = 'Bettbox';
  // ── 品牌显示名：用于 UI / 图标 / 欢迎语等对外展示 ──
  // 保持 productName（底层 socket/isolate/dataDir 命名的基础）不变，
  // 另立 brandName 供前端显示，实现纯前端品牌化、零内核风险。
  static const brandName = 'EdgeLink';
  static const devSuffix = 'Dev';
  static const packageId = 'com.edgelink.client';

  static const compactName = isDev ? '$productName$devSuffix' : productName;
  static const displayName = isDev ? 'EdgeLink Dev' : 'EdgeLink';
  static const mainExecutableName = productName;
  static const coreExecutableName = '${compactName}Core';
  static const dataDirName = compactName;
  static const tunDeviceName = compactName;
}

class WindowsHelperIdentity {
  static const serviceName = '${AppIdentity.compactName}HelperService';
  static const pipeName = '\\\\.\\pipe\\${AppIdentity.compactName}.Helper';
}
