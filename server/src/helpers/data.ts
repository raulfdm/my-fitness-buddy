import { last, keys } from 'lodash';

import { LastVersion, VersionedData } from '../types/data';

export const getLastVersion = (dataVersioned: VersionedData): LastVersion => {
  const versions = keys(dataVersioned);
  const lastVersion: string | undefined = last(versions);

  return lastVersion
    ? { version: lastVersion, data: dataVersioned[lastVersion] }
    : { version: '', data: [] };
};
